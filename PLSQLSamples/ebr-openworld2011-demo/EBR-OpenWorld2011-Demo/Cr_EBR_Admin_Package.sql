@@Connect_As_Sys

alter session set Plsql_Warnings = 'Enable:All'
/

-- Some small API changes were made going from 11.2-Beta-2 to 11.2-Production
-- The OBE is best run in a fresh-from-the-seed DB.
-- If this isn't done, there might be some invalid objects that can't be
-- validated and would give spurious errors from procedure Assert_No_Invalids().
-- Set Beta2 and Unclean_DB appropriately.
-- The tracing flag is present just for its pedagogic benefit.
-- It shows you that the code that's guarded by the CC directive that test this
-- is not essential for normal run-time operation.
alter session set Plsql_CCflags =
  'Tracing_Sql:true, Beta2:false, Unclean_DB:true'
/

-- Retry_DDL_With_Timeout_OK() and Parallel_Execute() can't be in
-- package Sys.EBR_Admin 'cos it needs to be IR and that needs to be DR.
create or replace function Sys.Retry_DDL_With_Timeout_OK(
  DDL_Stmt                  in varchar2,
  DDL_Lock_Timeout_Seconds  in pls_integer  := 1,
  Sleep_Seconds             in pls_integer  := 3,
  Max_Wait_Seconds          in pls_integer  := 60)
  return boolean
  authid Current_User
is
  Resource_Busy_And_Timed_Out exception;
  pragma Exception_Init(Resource_Busy_And_Timed_Out, -00054);

  -- There's no point in using this approach with a timeout
  -- less then 1 second.
  Timeout constant pls_integer :=
    case
      when DDL_Lock_Timeout_Seconds < 1       then 1
      when DDL_Lock_Timeout_Seconds > 1000000 then 1000
      else                                         DDL_Lock_Timeout_Seconds
    end;

  t constant pls_integer :=
    Max_Wait_Seconds /
      (DDL_Lock_Timeout_Seconds + Sleep_Seconds);
  No_Of_Retries constant pls_integer :=
    case
      when t < 1 then 1
      else            t
    end;

  Retry_No pls_integer not null := 0;
  OK boolean not null := false;

  -- Implicit To_Char on a pls_integer is SQL-injection-proof. This
  -- easily acccommodates the allowed range, 0..1000000 seconds.
  Timeout_Stmt constant varchar2(200) :=
    'alter session set DDL_Lock_Timeout = '||DDL_Lock_Timeout_Seconds;
begin
  $if $$Tracing_Sql $then x.Show_Sql(Timeout_Stmt); $end
  execute immediate Timeout_Stmt;

  while Retry_No < No_Of_Retries loop
    Retry_No := Retry_No + 1;
    begin
      $if $$Tracing_Sql $then x.Show_Sql(DDL_Stmt); $end
      execute immediate DDL_Stmt;
      OK := true;
      exit;
    exception when Resource_Busy_And_Timed_Out then
      Sys.DBMS_Lock.Sleep(Sleep_Seconds);
    end;
  end loop;
  return OK;
end Retry_DDL_With_Timeout_OK;
/

create or replace procedure Sys.Parallel_Execute(
  Task_Name                   in varchar2,
  Table_Owner                 in varchar2,
  Table_Name                  in varchar2,
  Chunk_Size                  in integer,

  Stmt                        in varchar2,
  Apply_Crossedition_Trigger  in varchar2 := null,
  Fire_Apply_Trigger          in boolean := false,
  Parallel_Level              in integer := 0,
  Max_No_Of_Resume_Attempts   in pls_integer := 3)
  authid Current_User
is
  -- task not found
  ORA_29498 exception; pragma Exception_Init(ORA_29498, -29498);

  Job_Class varchar2(32767) not null := Task_Name||'_JC';
begin
  $if $$Tracing_Sql $then
    x.Show_Sql(
      Stmt                       => Stmt,
      Parallel_Execute           => true,
      Apply_Crossedition_Trigger => Apply_Crossedition_Trigger,
      Fire_Apply_Trigger         => Fire_Apply_Trigger);
  $end

  if Length(Job_Class) > 30 then
    Raise_Application_Error(-20000, 'Parallel_Execute: Task_Name too long.');
  end if;

  begin
    Sys.DBMS_Parallel_Execute.Drop_Task(Task_Name);
  exception when ORA_29498 then null; end;
  Sys.DBMS_Parallel_Execute.Create_Task(Task_Name);

  Sys.DBMS_Parallel_Execute.Create_Chunks_By_Rowid(
    Task_Name   => Task_Name,
    Table_Owner => Table_Owner,
    Table_Name  => Table_Name,
    By_Row      => true,
    Chunk_Size  => Chunk_Size);

  Sys.DBMS_Parallel_Execute.Run_Task(
    Task_Name                  => Task_Name,
    Job_Class                  => Job_Class,
    Sql_Stmt                   => Stmt,
    Parallel_Level             => Parallel_Level,
    Apply_Crossedition_Trigger => Apply_Crossedition_Trigger,
    Fire_Apply_Trigger         => Fire_Apply_Trigger,
    Language_Flag              => Sys.DBMS_Sql.Native);

  declare
    Attempt pls_integer not null := 0;
    Status number not null := Sys.DBMS_Parallel_Execute.Task_Status(Task_Name);
  begin
    -- If there's an error, resume.
    while
      Attempt < Max_No_Of_Resume_Attempts and
      Status <> Sys.DBMS_Parallel_Execute.Finished
    loop
      Attempt := Attempt + 1;
      -- Use the same argument values as were used to invoke Run_Task().
      Sys.DBMS_Parallel_Execute.Resume_Task(Task_Name);
      Status := Sys.DBMS_Parallel_Execute.Task_Status(Task_Name);
    end loop;

    Sys.DBMS_Parallel_Execute.Drop_Task(Task_Name);
  end;
end Parallel_Execute;
/

-- This package exposes subprograms for the use of the EBR_Admin user.
-- Each subprogram has a schema-level wrapper so that the Execute
-- privilege (with or without "grant option") can be controlled at
-- the subprogram level of granularity.

-- The procedures Create_Edition() and Drop_All_Covered_Objects()
-- assume that an edition cannot have more than one child,
-- i.e. that EBR_Admin.Exists_Edn_With_GT_1_Child_() is false. An error is caused
-- if this assumption doesn't hold.

create or replace package Sys.EBR_Admin authid Definer is
  -- Allow space for surrounding double-quotes.
  subtype u_Name_t is varchar2(32) not null;
  subtype e_Name_t is varchar2(32);

  -- All the subprograms with a formal whose actual must be an Oracle identifier
  -- require this to be a COMMON identifier. Else error.
  procedure Actualize_All;
  procedure Assert_No_Invalids(Caption in varchar2);
  procedure Create_Edition(e in e_Name_t, Parent in e_Name_t := null);
  procedure Drop_All_Covered_Objects;
  procedure Drop_All_CETs_In_Current_Edn;

  -- Silently ignores the case that the edition doesn't exist.
  procedure Drop_Edition(e in e_Name_t);

  procedure Drop_All_Descendants_Of_Edn(e in e_Name_t := null);
  procedure Drop_All_Ancestors_Of_Edn(e in e_Name_t := null);

  procedure Enable_Editions_For_User(u in u_Name_t);
  procedure Grant_Use_On_Edition(e in e_Name_t, u in u_Name_t);
  procedure Kill_All_Sessions_Using_Edn(e in e_Name_t);
  procedure Retire_Edition(e in e_Name_t);
  procedure Set_Default_Edition(e in e_Name_t);
  procedure Set_Session_Edition(e in e_Name_t);
  function All_Backgrounds_Using_Dflt_Edn(Timeout_Seconds in integer) return boolean;
end EBR_Admin;
/
create or replace procedure Sys.Actualize_All authid Definer is
begin
  Sys.EBR_Admin.Actualize_All();
end Actualize_All;
/
create or replace procedure Sys.Assert_No_Invalids(Caption in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Assert_No_Invalids(Caption);
end Assert_No_Invalids;
/
create or replace procedure Sys.Create_Edition(e in varchar2, Parent in varchar2 := null) authid Definer is
begin
  Sys.EBR_Admin.Create_Edition(e, Parent);
end Create_Edition;
/
create or replace procedure Sys.Drop_All_Covered_Objects authid Definer is
begin
  Sys.EBR_Admin.Drop_All_Covered_Objects();
end Drop_All_Covered_Objects;
/
create or replace procedure Sys.Drop_All_CETs_In_Current_Edn authid Definer is
begin
  Sys.EBR_Admin.Drop_All_CETs_In_Current_Edn();
end Drop_All_CETs_In_Current_Edn;
/
create or replace procedure Sys.Drop_Edition(e in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Drop_Edition(e);
end Drop_Edition;
/
create or replace procedure Sys.Drop_All_Descendants_Of_Edn(e in varchar2 := null) authid Definer is
begin
  Sys.EBR_Admin.Drop_All_Descendants_Of_Edn(e);
end Drop_All_Descendants_Of_Edn;
/
create or replace procedure Sys.Drop_All_Ancestors_Of_Edn(e in varchar2 := null) authid Definer is
begin
  Sys.EBR_Admin.Drop_All_Ancestors_Of_Edn(e);
end Drop_All_Ancestors_Of_Edn;
/
create or replace procedure Sys.Enable_Editions_For_User(u in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Enable_Editions_For_User(u);
end Enable_Editions_For_User;
/
create or replace procedure Sys.Grant_Use_On_Edition(e in varchar2, u in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Grant_Use_On_Edition(e, u);
end Grant_Use_On_Edition;
/
create or replace procedure Sys.Kill_All_Sessions_Using_Edn(e in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Kill_All_Sessions_Using_Edn(e);
end Kill_All_Sessions_Using_Edn;
/
create or replace procedure Sys.Retire_Edition(e in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Retire_Edition(e);
end Retire_Edition;
/
create or replace procedure Sys.Set_Default_Edition(e in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Set_Default_Edition(e);
end Set_Default_Edition;
/

-- This is simply a wrapper for DBMS_Session.Set_Edition_Deferred
-- so it's perfectly fine to grant it to public.
create or replace procedure Sys.Set_Session_Edition(e in varchar2) authid Definer is
begin
  Sys.EBR_Admin.Set_Session_Edition(e);
end Set_Session_Edition;
/
grant Execute on Sys.Set_Session_Edition to public
/

create or replace function Sys.All_Backgrounds_Using_Dflt_Edn(
  Timeout_Seconds in integer)
  return boolean
  authid Definer
is
begin
  return Sys.EBR_Admin.All_Backgrounds_Using_Dflt_Edn(Timeout_Seconds);
end All_Backgrounds_Using_Dflt_Edn;
/
--------------------------------------------------------------------------------
-- Implementation

-- PLW-06006: uncalled procedure % is removed.
-- PLW-06005: inlining of call of procedure % was done
alter session set Plsql_Warnings = 'Enable:All, Disable:06005, Disable:06006'
/
create or replace type Sys.Editions_t is table of varchar2(30)
/
create or replace package body Sys.EBR_Admin is
  subtype g_Name_t is Sys.DBA_Tab_Privs.Grantee%type;
  NL constant varchar2(1) := '
';
  Rule constant varchar2(82) := NL||Rpad('_', 80, '_')||NL;

  Invalid_Sql_Name             exception; pragma Exception_Init(Invalid_Sql_Name,             -44003);
  Edition_Does_Not_Exist       exception; pragma Exception_Init(Edition_Does_Not_Exist,       -38802);
  Resource_Busy_And_Timed_Out  exception; pragma Exception_Init(Resource_Busy_And_Timed_Out,  -00054);
  Deadlock_Detected            exception; pragma Exception_Init(Deadlock_Detected,            -04020);
  Edition_Is_In_Use            exception; pragma Exception_Init(Edition_Is_In_Use,            -38805);

  -- For "alter system kill session..."
  User_Session_ID_Doesnt_Exist exception; pragma Exception_Init(User_Session_ID_Doesnt_Exist, -00030);
  Session_Marked_For_Kill      exception; pragma Exception_Init(Session_Marked_For_Kill,      -00031);

  -- This is a convenient way to document the exceptions.
  -- They are never directly used.
  Invalid_Objects_Found        exception; pragma Exception_Init(Invalid_Objects_Found,        -20000);
  Not_A_Common_Identifier      exception; pragma Exception_Init(Not_A_Common_Identifier,      -20001);
  Edition_Is_Not_Retired       exception; pragma Exception_Init(Edition_Is_Not_Retired,       -20002);
  Leaf_Edition_Is_Not_Default  exception; pragma Exception_Init(Leaf_Edition_Is_Not_Default,  -20003);
  Retiree_Is_Default           exception; pragma Exception_Init(Retiree_Is_Default,           -20004);
  Exists_Edn_With_GT_1_Child   exception; pragma Exception_Init(Exists_Edn_With_GT_1_Child,   -20005);

  function Metadata_Name(n in varchar2) return varchar2 is
    -- n is the name as spelled in SQL syntax.
    -- If it is surrounded with double quotes, then these must simply be stripped.
    -- If is is plain, then it must be upper cased.
  begin
    return
      case
        when Substr(n, 1, 1) = '"' and Substr(n, Length(n), 1) = '"'
          then Substr(n, 2, (Length(n) - 2))
        else
                Upper(n)
      end;
  end Metadata_Name;

  function Exists_Edn_With_GT_1_Child_ return boolean is
    n integer not null := 1;
  begin
    select Count(*)
    into n
    from (
      select Connect_By_IsLeaf IsLeaf
      from Sys.DBA_Editions
      connect by prior Edition_Name = Parent_Edition_Name
      start with Parent_Edition_Name is null)
    where IsLeaf = 1;
    return n > 1;
  end Exists_Edn_With_GT_1_Child_;

  function Default_Edition_Name_ return e_Name_t is
    v e_Name_t not null := '"';
  begin
    select Property_Value
    into v
    from Sys.Database_Properties
    where Property_Name = 'DEFAULT_EDITION';
    return v;
  end Default_Edition_Name_;

  -- This procedure can be run only from a client to Oracle Database.
  procedure Do_Utl_Recomp is

    function No_Of_Valid_Objects return integer;
    n_Valids_Before_Run integer not null := No_Of_Valid_Objects();
    n_Valids_After_Run integer not null := -1;

    function No_Of_Valid_Objects return integer is
      n integer not null := -1;
    begin
      select Count(*)
      into n
      from Sys.DBA_Objects_AE
      where Status = 'VALID';
      return n;
    end No_Of_Valid_Objects;
  begin
    loop
      -- Recomp_Parallel is probably better for real world use.
      Sys.Utl_Recomp.Recomp_Serial();
      n_Valids_After_Run := No_Of_Valid_Objects();
      exit when n_Valids_After_Run = n_Valids_Before_Run;
      n_Valids_Before_Run := n_Valids_After_Run;
    end loop;
  end Do_Utl_Recomp;

  procedure Actualize_All is
    e constant e_Name_t :=
      Sys_Context('Userenv', 'Current_Edition_Name');

    cursor Inherited_Objects_Cur is
      select o.Object_Type, o.Owner, o.Object_Name
      from Sys.DBA_Objects o
      where o.Object_Type not like '%BODY'
      and o.Edition_Name <> Actualize_All.e;
    type t is table of Inherited_Objects_Cur%rowtype; Inherited_Objects t;
  begin
    open Inherited_Objects_Cur;
    fetch Inherited_Objects_Cur bulk collect into Inherited_Objects;
    close Inherited_Objects_Cur;

    for j in 1..Inherited_Objects.Count() loop
      declare
        Stmt_Start constant varchar2(200) :=
          'alter '||Inherited_Objects(j).Object_Type||
          ' "'||Inherited_Objects(j).Owner||
          '"."'||Inherited_Objects(j).Object_Name||'"'||NL||
          '  compile';

        Stmt constant varchar2(200) :=
          case Inherited_Objects(j).Object_Type
            when 'VIEW'    then Stmt_Start
            when 'SYNONYM' then Stmt_Start
            else           Stmt_Start||' reuse settings'
          end;
      begin
        $if $$Tracing_Sql $then x.Show_Sql(Stmt); $end
        execute immediate Stmt;
      end;
    end loop;
  end Actualize_All;

  -- This procedure can be run only from a client to Oracle Database.
  -- Check for the existence of invalid objects database wide and across all editions.
  -- If at least one is found, lists the counts by user and raises ORA-20000.
  -- Because of the possibility of deferred actualization, the only safe way to do
  -- the intended query is immediately after calling a Utl_Recomp subprogram.
  -- No tracing needed here.
  procedure Assert_No_Invalids(Caption in varchar2) is
    No_Of_Users_With_Invalids pls_integer not null := 0;

    cursor Invalids_Cur is
      select Owner, Count(*) n
      from Sys.DBA_Objects_AE
      where Status <> 'VALID'
      -- Ordinarily, you must check database wide for invalid objects.
      -- Else, the invalidity of unsuspected noneditioned dependants upon
      -- newly editioned dependency parents might go unnoticed.
      -- This workaround allows the demo to succeed in a database that already
      -- has objects that cannot be validated.
      $if $$Unclean_DB $then
        and Owner in ('OBE_HELPER', 'EBR_ADMIN', 'MINI_HR_OWNER', 'MINI_HR_API')
      $end
      group by Owner
      order by Owner;
    type t is table of Invalids_Cur%rowtype; Invalids t;
  begin
    Do_Utl_Recomp();

    -- Ideally, do Alan's magic query that accesses the Utl_Recomp log
    -- and discovers deferredly actualized invalids.
    -- For now, the naive approach.
    open Invalids_Cur;
    fetch Invalids_Cur bulk collect into Invalids;
    close Invalids_Cur;  

    No_Of_Users_With_Invalids := Invalids.Count();
    if No_Of_Users_With_Invalids > 0 then
      Sys.DBMS_Output.Put_Line(NL||Caption||NL||Rpad('Owner', 31)||'No. Of Invalid Objects');
      for j in 1..No_Of_Users_With_Invalids loop
        Sys.DBMS_Output.Put_Line(Rpad(Invalids(j).Owner, 31)||Invalids(j).n||Rule);
      end loop;
      Raise_Application_Error(-20000, 'Invalid object(s) found. Cannot continue.');
    end if;
  end Assert_No_Invalids;

  procedure Create_Edition(e in e_Name_t, Parent in e_Name_t := null) is

    function Leaf_Edition return e_Name_t is
      e e_Name_t not null := '"';
    begin
      select Edition_Name
      into e
      from (
        select Edition_Name, Connect_By_IsLeaf IsLeaf
        from Sys.DBA_Editions
        connect by prior Edition_Name = Parent_Edition_Name
        start with Parent_Edition_Name is null)
      where IsLeaf = 1;
      return Sys.DBMS_Assert.Simple_Sql_Name('"'||e||'"');
    end Leaf_Edition;

  begin
    if Exists_Edn_With_GT_1_Child_() then
      Raise_Application_Error(-20005,
        'Create_Edition: There exists an edition with more then one child.');
    end if;

    -- Needs to be an inner block so that we can catch any exceptions
    -- that the declarations might cause.
    -- The same comment applies to all the following subprograms.
    declare
      Safe_e      constant e_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(e);
      Safe_Parent constant e_Name_t :=
        case
          when Parent is null then Leaf_Edition()
          else                     Sys.DBMS_Assert.Simple_Sql_Name(Parent)
        end;
      Create_Stmt constant varchar2(200) :=
        'create edition '||Safe_e||' as child of '||Safe_Parent;
      Grant_Stmt constant varchar2(200) :=
        'grant use on edition '||Safe_e||' to EBR_Admin';
    begin
      $if $$Tracing_Sql $then x.Show_Sql(Create_Stmt); $end
      execute immediate Create_Stmt;
      $if $$Tracing_Sql $then x.Show_Sql(Grant_Stmt); $end
      execute immediate Grant_Stmt;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Create_Edition: "'||e||'", "'||Nvl(Parent, '?')||'": Invalid SQL name.');
  end Create_Edition;

  -- Requires that the leaf edition is the default and that all of
  -- its ancesters are retired.
  -- Drops each editioned object (valid or invalid) in the leaf's ancesters
  -- that is "covered" by an actual object in the leaf.
  procedure Drop_All_Covered_Objects is
    Default_Edition constant e_Name_t not null := Default_Edition_Name_();

    cursor Covered_Objects_Cur(Target in e_Name_t, Descendants in Sys.Editions_t) is
      select o.Object_Type, o.Owner, o.Object_Name
      from Sys.DBA_Objects_AE o
      where o.Object_Type <> 'NON-EXISTENT'
      and o.Object_Type not like '%BODY'
      and o.Edition_Name = Covered_Objects_Cur.Target

      intersect

      select o.Object_Type, o.Owner, o.Object_Name
      from Sys.DBA_Objects_AE o
      where o.Object_Type <> 'NON-EXISTENT'
      and o.Object_Type not like '%BODY'
      and o.Edition_Name in (select Column_Value from table(Covered_Objects_Cur.Descendants));

    type t is table of e_Name_t index by pls_integer;
    Parent_Editions t;

    type t2 is table of Covered_Objects_Cur%rowtype;
    Covered_Objects t2;

    Descendants Sys.Editions_t := Sys.Editions_t();

    Cur integer := Sys.DBMS_Sql.Open_Cursor(Security_Level => 2);
  begin
    if Exists_Edn_With_GT_1_Child_() then
      Raise_Application_Error(-20005,
        'Drop_All_Covered_Objects: There exists an edition with more then one child.');
    end if;

    declare Leaf e_Name_t not null := '?';
    begin
      for j in (
        select Level Lvl, Edition_Name, Parent_Edition_Name      
        from Sys.DBA_Editions
        connect by prior Edition_Name = Parent_Edition_Name
        start with Parent_Edition_Name is null
        order by Lvl)
      loop
        -- The leaf will be seen last in order of the "connect by prior" level.
        Leaf := j.Edition_Name;
        if j.Parent_Edition_Name is not null then

          -- Check the j.Parent_Edition_Name is retired.
          declare n integer not null := -1;
          begin
            select Count(*)
            into n
            from Sys.DBA_Tab_Privs
            where Privilege = 'USE'
            and grantee <> 'EBR_ADMIN'
            and Table_Name = j.Parent_Edition_Name;
            if n <> 0 then
              Raise_Application_Error(-20002,
              'Drop_All_Covered_Objects: '||j.Parent_Edition_Name||' isn''t retired.');
            end if;
          end;

          Parent_Editions(j.Lvl - 1) := j.Parent_Edition_Name;
        end if;
      end loop;
      if Leaf <> Default_Edition then
        Raise_Application_Error(-20003,
          'Drop_All_Covered_Objects: Leaf <> Default_Edition.');
      end if;
    end;

    -- Try not to leave uncovered invalid objetcs.
    Do_Utl_Recomp();

    for j in reverse 1..Parent_Editions.Count() loop
      select e.Edition_Name
      bulk collect into Descendants
      from Sys.DBA_Editions e
      connect by prior e.Edition_Name = e.Parent_Edition_Name
      start with e.Parent_Edition_Name =
        Drop_All_Covered_Objects.Parent_Editions(j)
      order by Level;

      open Covered_Objects_Cur(Parent_Editions(j), Descendants);
      fetch Covered_Objects_Cur bulk collect into Covered_Objects;
      close Covered_Objects_Cur;

      for k in 1..Covered_Objects.Count() loop
        declare
          Stmt constant varchar2(200) :=
            'drop '||Covered_Objects(k).Object_Type||
            ' "'||Covered_Objects(k).Owner||'"."'||Covered_Objects(k).Object_Name||'"';
        begin
          $if $$Tracing_Sql $then x.Show_Sql(Stmt, '"'||Parent_Editions(j)||'"'); $end
          -- Parse() is sufficient for a DDL. Execute() isn't needed.
          Sys.DBMS_Sql.Parse(
            c              => Cur,
            Language_Flag  => Sys.DBMS_Sql.Native,
            Statement      => Stmt,
            Edition        => Parent_Editions(j));
        end;
      end loop;
    end loop;
    Sys.DBMS_Sql.Close_cursor(Cur);
  end Drop_All_Covered_Objects;

  procedure Drop_All_CETs_In_Current_Edn is
    type t1 is table of Sys.DBA_Triggers.Owner%type;        Owners        t1;
    type t2 is table of Sys.DBA_Triggers.Trigger_Name%type; Trigger_Names t2;
  begin
    select Owner, Trigger_Name
    bulk collect into Owners, Trigger_Names
    from Sys.DBA_Triggers
    where Crossedition in ('FORWARD', 'REVERSE');

    for j in 1..Trigger_Names.Count() loop
      declare
        Stmt constant varchar2(200) :=
          'drop trigger '||'"'||Owners(j)||'"."'||Trigger_Names(j)||'"';
      begin
        $if $$Tracing_Sql $then x.Show_Sql(Stmt); $end
        execute immediate Stmt;
      end;
    end loop;
  end Drop_All_CETs_In_Current_Edn;

  procedure Drop_Edition(e in e_Name_t) is
    procedure Execute_Stmt(Stmt in varchar2) is
      OK                       constant pls_integer not null := 0;
      Edition_Is_In_Use_Error  constant pls_integer not null := 1;
      Deadlock_Detected_Error  constant pls_integer not null := 2;
      Status pls_integer not null := OK;
    begin
      $if $$Tracing_Sql $then x.Show_Sql(Stmt); $end
      -- Occasionally, we get this error:
      -- "deadlock detected while trying to lock object MINI_HR_OWNER.employees"
      -- This seems to be unavoidable. But it's untimately harmless.
      -- So try up to five times with 5 second sleep.
      -- Similarly "edition is in use" can occasionally occur after killing sessions
      -- that were using to-be-dropped 'cos locks aren't imnmediately released.
      for j in 1..5 loop
        begin
          Status := OK;
          execute immediate Stmt;
          exit;
        exception
          when Edition_Is_In_Use then
            Status := Edition_Is_In_Use_Error;
            Sys.DBMS_Lock.Sleep(5);
          when Deadlock_Detected then
            Status := Deadlock_Detected_Error;
            Sys.DBMS_Lock.Sleep(5);
        end;
      end loop;

      if Status = Edition_Is_In_Use_Error then
        raise Edition_Is_In_Use;
      elsif Status = Deadlock_Detected_Error then
        raise Deadlock_Detected;
      end if;      
    exception
      when Edition_Does_Not_Exist then null;
    end Execute_Stmt;
  begin
    declare
      Safe_e constant e_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(e);
      Set_Unusable_Stmt constant varchar2(200) :=
        'alter edition '||Safe_e||' unusable';
      Drop_Stmt constant varchar2(200) :=
        'drop edition '||Safe_e||' cascade';
    begin
      -- alter edition x unusable removed after Beta2.
      $if $$Beta2 $then
        Execute_Stmt(Set_Unusable_Stmt);
      $end
      Execute_Stmt(Drop_Stmt);
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Drop_Edition: "'||e||'": Invalid SQL name.');
  end Drop_Edition;

  -- Using "e := null" means "root edition".
  procedure Drop_All_Descendants_Of_Edn(e in e_Name_t := null) is
    type t is table of e_Name_t; e_Names t;
  begin
    declare
      Safe_e constant e_Name_t :=
        case
          when e is null then '""'
          else                Sys.DBMS_Assert.Simple_Sql_Name(e)
        end;
      Metadata_e constant e_Name_t := Metadata_Name(Safe_e);
    begin
      if Safe_e = '""' then
        select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"') x
        bulk collect into e_Names
        from (
          select Edition_Name, Level Lvl
          from Sys.DBA_Editions
          connect by prior Edition_Name = Parent_Edition_Name
          start with Parent_Edition_Name is null
          order by Lvl desc)
        where Lvl > 1;
      else
        select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"')
        bulk collect into e_Names
        from Sys.DBA_Editions
        connect by prior Edition_Name = Parent_Edition_Name
        start with Parent_Edition_Name = Metadata_e
        order by Level desc;
      end if;

      for j in 1..e_Names.Count() loop
        Drop_Edition(e_Names(j));
      end loop;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Drop_All_Descendants_Of_Edn: "'||e||'": Invalid SQL name.');
  end Drop_All_Descendants_Of_Edn;

  -- Using "e := null" means "leaf edition". Error when not unique.
  procedure Drop_All_Ancestors_Of_Edn(e in e_Name_t := null) is
    type t is table of e_Name_t; e_Names t;
  begin
    if Exists_Edn_With_GT_1_Child_() then
      Raise_Application_Error(-20005,
        'Drop_All_Ancestors_Of_Edn: There exists an edition with more then one child.');
    end if;
    declare
      Safe_e constant e_Name_t :=
        case
          when e is null then '""'
          else                Sys.DBMS_Assert.Simple_Sql_Name(e)
        end;
      Metadata_e constant e_Name_t :=
        case
          when Substr(e, 1, 1) = '"' and Substr(e, Length(e), 1) = '"'
            then Substr(e, 2, (Length(e) - 2))
          else
                 Upper(e)
        end;
    begin
      if Safe_e = '""' then
        select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"')
        bulk collect into e_Names
        from (
          select Level Lvl, Edition_Name
          from Sys.DBA_Editions
          connect by prior Edition_Name = Parent_Edition_Name
          start with Parent_Edition_Name is null)
        where Lvl < (
          select Max(Lvl) from (
            select Level Lvl, Edition_Name
            from Sys.DBA_Editions
            connect by prior Edition_Name = Parent_Edition_Name
            start with Parent_Edition_Name is null)
          )
        order by Lvl;
      else
        select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"')
        bulk collect into e_Names
        from (
          select Level Lvl, Edition_Name
          from Sys.DBA_Editions
          connect by prior Edition_Name = Parent_Edition_Name
          start with Parent_Edition_Name is null)
        where Lvl < (
          select Lvl from (
            select Level Lvl, Edition_Name
            from Sys.DBA_Editions
            connect by prior Edition_Name = Parent_Edition_Name
            start with Parent_Edition_Name is null)
          where Edition_Name = Metadata_e)
        order by Lvl;
      end if;

      for j in 1..e_Names.Count() loop
        Drop_Edition(e_Names(j));
      end loop;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Drop_All_Ancestors_Of_Edn: "'||e||'": Invalid SQL name.');
  end Drop_All_Ancestors_Of_Edn;

  procedure Enable_Editions_For_User(u in u_Name_t) is
  begin
    declare
      Safe_u constant u_Name_t :=  Sys.DBMS_Assert.Simple_Sql_Name(u);
      Stmt constant varchar2(200) :=
        'alter user '||Safe_u||' enable editions force';
    begin
      -- Use "force" to avoid ORA-38819:
      --   user % owns one or more objects whose type
      --   is editionable and that have noneditioned dependent objects.
      --
      -- There might be bi-directional dependencies between pairs of schemas
      -- that will both be editions-enabled.
      $if $$Tracing_Sql $then x.Show_Sql(Stmt); $end
      execute immediate Stmt;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Enable_Editions_For_User: "'||u||'": Invalid SQL name.');
  end Enable_Editions_For_User;

  procedure Grant_Use_On_Edition(e in e_Name_t, u in u_Name_t) is
  begin
    declare
      Safe_e constant e_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(e);
      Safe_u constant u_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(u);
      Stmt constant varchar2(200) :=
        'grant use on edition '||Safe_e||' to '||Safe_u;
    begin
      $if $$Tracing_Sql $then x.Show_Sql(Stmt); $end
      execute immediate Stmt;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Grant_Use_On_Edition: "'||e||'", "'||u||'": Invalid SQL name.');
  end Grant_Use_On_Edition;

  procedure Kill_All_Sessions_Using_Edn(e in e_Name_t) is
    subtype Sid_t is Sys.v_$MyStat.Sid%type;
    subtype Edn_t is Sys.DBA_Objects.Object_ID%type;
  begin
    <<b>>declare
      Safe_e constant e_Name_t := Upper(Sys.DBMS_Assert.Simple_Sql_Name(e));
      Metadata_e constant e_Name_t := Metadata_Name(Safe_e);

      function My_Sid_ return Sid_t;
      My_Sid constant Sid_t not null := My_Sid_();

      function Target_Edition_ return Edn_t;
      Target_Edition constant Edn_t not null := Target_Edition_();

      cursor Target_Foreground_Sessions_Cur is
        select s.Sid, s.Serial#
        from Sys.v_$Session s
        where s.Sid <> b.My_Sid
        and s.Session_Edition_ID = b.Target_Edition
        and s.Username is not null;
      type t is table of Target_Foreground_Sessions_Cur%rowtype;
      Target_Foreground_Sessions t;

      function My_Sid_ return Sid_t is
        v Sid_t;
      begin
        select distinct m.Sid
        into My_Sid_.v
        from Sys.v_$MyStat m;
        return v;
      end My_Sid_;

      function Target_Edition_ return Edn_t is
        v Edn_t;
      begin
        select o.Object_ID
        into Target_Edition_.v
        from Sys.DBA_Objects o inner join Sys.DBA_Editions e
        on (o.Object_Name = e.Edition_Name)
        and o.Object_Type = 'EDITION'
        and e.Edition_Name = b.Metadata_e;
        return v;
      exception when No_Data_Found then
        raise Edition_Does_Not_Exist;
        -- Workaround to supress PLW-05005:
        -- subprogram TARGET_EDITION_ returns without value at line...
        return null;
      end Target_Edition_;
    begin
      loop
        open Target_Foreground_Sessions_Cur;
        fetch Target_Foreground_Sessions_Cur bulk collect into Target_Foreground_Sessions;
        close Target_Foreground_Sessions_Cur;
        exit when Target_Foreground_Sessions.Count() = 0;

        for j in 1..Target_Foreground_Sessions.Count() loop
          declare
            -- Should use "alter system disconnect session"
            Stmt constant varchar2(200) :=
              'alter system kill session '''||
              Target_Foreground_Sessions(j).Sid||', '||Target_Foreground_Sessions(j).Serial#||
              ''' immediate';
          begin
            -- Not interesting to trace this.
            execute immediate Stmt;
          exception
            when User_Session_ID_Doesnt_Exist or Session_Marked_For_Kill then null;
          end;
        end loop;
        -- See action for ORA-00031 (Session_Marked_For_Kill).
        -- We may need to wait for "kill" to take effect.
        Sys.DBMS_Lock.Sleep(2);
      end loop;
    end b;
  exception
    when Invalid_Sql_Name then
      Raise_Application_Error(-20001,
        'Kill_All_Sessions_Using_Edn: "'||e||'": Invalid SQL name.');

    when Edition_Does_Not_Exist then
      DBMS_Output.Put_Line(
        'FYI: Kill_All_Sessions_Using_Edn: edition '||e||' doesn''t exist.');
  end Kill_All_Sessions_Using_Edn;

  -- Revoke "use" on edition e from every grantee.
  -- Then grant "use" on edition e to EBR_Admin.
  procedure Retire_Edition(e in e_Name_t) is
    type t is table of g_Name_t; Grantees t;
    Default_Edition constant e_Name_t := Default_Edition_Name_();
  begin
    declare
      Safe_e constant e_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(e);
      Metadata_e constant e_Name_t :=
        case
          when Substr(e, 1, 1) = '"' and Substr(e, Length(e), 1) = '"'
            then Substr(e, 2, (Length(e) - 2))
          else
                 Upper(e)
        end;
    begin
      if Metadata_e = Default_Edition then
        Raise_Application_Error(-20004,
          'Retire_Edition: Cannot retire the default edition: '||Safe_e);
      end if;

      declare n integer not null := 0;
      begin
        select Count(*)
        into n
        from Sys.DBA_Editions
        where Edition_Name = Metadata_e;
        if n < 1 then
          DBMS_Output.Put_Line(
            'FYI: Retire_Edition: edition '||Safe_e||' doesn''t exist.');
          return;
        end if;

        select Grantee
        bulk collect into Grantees
        from Sys.DBA_Tab_Privs
        where Privilege = 'USE'
        and Table_Name = Metadata_e;

        for j in 1..Grantees.Count() loop
          declare
            g constant g_Name_t :=
              Sys.DBMS_Assert.Simple_Sql_Name('"'||Grantees(j)||'"');
            Revoke_Stmt constant varchar2(200) :=
            'revoke use on edition '||Safe_e||' from '||g;
          begin
            $if $$Tracing_Sql $then x.Show_Sql(Revoke_Stmt); $end
            execute immediate Revoke_Stmt;
          end;
        end loop;
        declare
          Grant_Stmt constant varchar2(200) :=
            'grant use on edition '||Safe_e||' to EBR_Admin';
        begin
          $if $$Tracing_Sql $then x.Show_Sql(Grant_Stmt); $end
          execute immediate Grant_Stmt;
        end;
      end;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Retire_Edition: "'||e||'": Invalid SQL name.');
  end Retire_Edition;

  procedure Set_Default_Edition(e in e_Name_t) is
  begin
    declare
      Safe_e constant e_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(e);
        Stmt constant varchar2(200) :=
          'alter database default edition = '||e;
    begin
      $if $$Tracing_Sql $then x.Show_Sql(Stmt); $end
      execute immediate Stmt;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Set_Default_Edition: "'||e||'": Invalid SQL name.');
  end Set_Default_Edition;

  procedure Set_Session_Edition(e in e_Name_t) is
  begin
    declare
      Safe_e constant e_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(e);
        Stmt constant varchar2(200) :=
          'begin DBMS_Session.Set_Edition_Deferred('''||Safe_e||'''); end;';
    begin
      $if $$Tracing_Sql $then x.Show_Sql(Stmt); $end

      Sys.DBMS_Session.Set_Edition_Deferred(Safe_e);
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Set_Session_Edition: "'||e||'": Invalid SQL name.');
  end Set_Session_Edition;

  -- Waits until MMON and all other backround sessions that do SQL
  -- are using the edition which has just been set as the default.
  -- Each polls to check what is the default each iteration of its
  -- main processing loop and if it is using an edition that is no
  -- longer the default, it switches to use the new default.
  -- No tracing needed here.
  function All_Backgrounds_Using_Dflt_Edn(Timeout_Seconds in integer) return boolean is
    OK boolean not null := true;

    t0 constant integer not null := Sys.DBMS_Utility.Get_Time();
    t1          integer not null := Sys.DBMS_Utility.Get_Time();

    function Default_Edition_ID_ return DBA_Objects.Object_ID%type;
    Default_Edition_ID constant Sys.DBA_Objects.Object_ID%type :=
      Default_Edition_ID_();

    function Default_Edition_ID_ return DBA_Objects.Object_ID%type is
      ID DBA_Objects.Object_ID%type not null := 0;
    begin
      select o.Object_ID
      into Default_Edition_ID_.ID
      from Sys.DBA_Objects o inner join Sys.Database_Properties p
      on o.Object_Name = p.Property_Value
      and p.Property_Name = 'DEFAULT_EDITION'
      and o.Object_Type = 'EDITION';
      return ID;
    end Default_Edition_ID_;

    function Nof_Bkgrnds_Not_Using_Dflt_Edn return integer is
      n integer not null := 0;
    begin
      -- Session_Edition_ID = 0 means doesn't do SQL
      select Count(*)
      into    Nof_Bkgrnds_Not_Using_Dflt_Edn.n
      from    Sys.v_$Session s
      where   s.Session_Edition_ID <> All_Backgrounds_Using_Dflt_Edn.Default_Edition_ID
      and     s.Session_Edition_ID <> 0
      and     s.Type = 'BACKGROUND';
      return n;
    end Nof_Bkgrnds_Not_Using_Dflt_Edn;

    procedure Show_State(n in integer) is
    begin
      Sys.DBMS_Output.Put_Line(
        '  After'||To_Char((t1 - t0)/100.0, '0.9')||' sec, '||
        'no. of background sessions not using default edition: '||n);
    end Show_State;
  begin
    declare
      n integer not null := Nof_Bkgrnds_Not_Using_Dflt_Edn();
    begin
      Sys.DBMS_Output.Put_Line('');
      Show_State(n);
      while n > 0 loop
        n := Nof_Bkgrnds_Not_Using_Dflt_Edn();
        t1 := Sys.DBMS_Utility.Get_Time();
        exit when n = 0;

        Sys.DBMS_Lock.Sleep(Seconds=>0.5);
        if (t1 - t0) > Timeout_Seconds*100 then
          OK := false;
          exit;
        end if;
      end loop;
      Show_State(n);
    end;
    return OK;
  end All_Backgrounds_Using_Dflt_Edn;
end EBR_Admin;
/
EXECUTE x.p('EBR_Admin package created.')
