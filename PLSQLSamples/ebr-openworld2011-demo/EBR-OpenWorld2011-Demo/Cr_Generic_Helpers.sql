@@Connect_As_Sys
-- These helpers have nothing to do with edition-based redeifiniton.
begin
  declare
    ORA_01918 exception; pragma Exception_Init(ORA_01918, -01918);
  begin
    execute immediate 'drop user OBE_Helper cascade';
  exception when ORA_01918 then null;
  end;

  execute immediate '
    create user OBE_Helper
    default tablespace Users
    quota unlimited on Users
    identified by p';

  execute immediate '
    alter user OBE_Helper account lock';

  -- Practice the principle of least privilege
  execute immediate '
    grant
      Create Job
    to OBE_Helper';
end Create_User; 
/

-- The PL/SQL Packages and Types Reference seems to
-- recommend this:
declare
  -- cannot REVOKE privileges you did not grant
  ORA_01927 exception; pragma Exception_Init(ORA_01927, -01927);
begin
  execute immediate 'revoke Execute on DBMS_Lock from public';
exception when ORA_01927 then null; end;
/
grant Execute on DBMS_Lock to OBE_Helper
/
--------------------------------------------------------------------------------
alter session set Plsql_Warnings = 'Enable:All'
/

-- This collection type actually has just a single usage in this OBE: it's the
-- datatype of function Mini_HR_Owner.Emp_Mtnc.Employee_Rows_RC()'s IN formal.
-- However, don't (in Beta2) modify these scripts to place it in the
-- Mini_HR_Owner schema. The point is that Mini_HR_Owner will be editions-enabled
-- but OBE_Helper will never be. If Integers_t is owned by an editions-enabled user,
-- this will provoke Bug 8596484. Its consequence is that the repeated query that
-- shows the effect of the simulated DML from ordinary users (see Show_20_Rows)
-- sometimes fail with "PLS-00801: internal error [56402]".
-- This manifests as a random effect. It's caused 'cos the collection object can
-- get aged out of the shared pool and there's a bug in the re-load code.

create type OBE_Helper.Integers_t is table of integer
/
grant Execute on OBE_Helper.Integers_t to public
/
create or replace public synonym Integers_t for OBE_Helper.Integers_t
/
--------------------------------------------------------------------------------
-- Sleep is completely innocent.
create or replace procedure OBE_Helper.Sleep(s in integer) authid Definer is
begin
  Sys.DBMS_Lock.Sleep(s);
end Sleep;
/
grant Execute on OBE_Helper.Sleep to public
/
create or replace public synonym Sleep for OBE_Helper.Sleep
/
--------------------------------------------------------------------------------

alter session set Plsql_Warnings = 'Enable:All'
/
create or replace function OBE_Helper.Random_Integer(
  Low in number, High in number)
  return pls_integer
  authid Definer
is
  n number not null := 0;
begin
  n := Sys.DBMS_Random.Value(Low=>Low-0.1, High=>High+0.1);
  if n < Low  then n := Low;  end if;
  if n > High then n := High; end if;
  return n;
end Random_Integer;
/
grant Execute on OBE_Helper.Random_Integer to public
/
create or replace public synonym Random_Integer for OBE_Helper.Random_Integer
/
--------------------------------------------------------------------------------
alter session set Plsql_Warnings = 'Enable:All'
/
create package OBE_Helper.Random_Phone_Number authid Definer is
  type Post_Upgrade_Number_t is record(
    Country_Code varchar2(5) not null := '+00',
    Phone_No_In_Ctry varchar2(20) := '000-000-0000');

  function Pre_Upgrade_No  return varchar2;
  function Post_Upgrade_No return Post_Upgrade_Number_t;
end Random_Phone_Number;
/
grant Execute on OBE_Helper.Random_Phone_Number to public
/
create or replace public synonym Random_Phone_Number for OBE_Helper.Random_Phone_Number
/
alter session set Plsql_Warnings = 'Enable:All, Disable:06005'
/
create package body OBE_Helper.Random_Phone_Number is
  function Post_Upgrade_No return Post_Upgrade_Number_t is
    x constant varchar2(80) not null :=
      '+'||To_Char(Random_Integer(30, 49));

    Country_Code constant varchar2(80) not null :=
      case Random_Integer(0, 1)
        when 0 then '+1'
        when 1 then x
      end;

    Phone_No_In_Ctry constant varchar2(80) not null :=
      To_Char(Random_Integer( 100,  999))||'-'||
      To_Char(Random_Integer( 100,  999))||'-'||
      To_Char(Random_Integer(1000, 9999));

    v Post_Upgrade_Number_t;
  begin
    v.Country_Code     := Post_Upgrade_No.Country_Code;
    v.Phone_No_In_Ctry := Post_Upgrade_No.Phone_No_In_Ctry;
    return v;
  end Post_Upgrade_No;

  function Pre_Upgrade_No  return varchar2 is
    v Post_Upgrade_Number_t := Post_Upgrade_No();
  begin
    return
      -- The logic from Rvrs_CET.
      case v.Country_Code
        when '+1' then
          Replace(v.Phone_No_In_Ctry, '-', '.')
        else
          '011.'||Ltrim(v.Country_Code, '+')||'.'||
            Replace(v.Phone_No_In_Ctry, '-', '.')
      end;
  end Pre_Upgrade_No;
end Random_Phone_Number;
/
--------------------------------------------------------------------------------
-- x.Show_Sql() can be turned on/off using x.Turn_On_Show_Sql and
-- x.Turn_Off_Show_Sql. We want the mode to be "sticky" across session boundaries,
-- so we can't use a package global. Therefore, we use a flag in table.
-- This gives a convenient opportunity to show an effective use of a
-- result-cached function.
--
-- However, a doc'd implementation restriction says that a result-cached function
-- may not rely on system tables. The attempt causes silent misbehavior.
-- For this reason, package x and the table x_Flags that it relies on
-- are created in the dedicated, locked, OBE_Helper schema.

create package OBE_Helper.x authid Definer is
  -- x.p(), x.p_(), and x.Show_State are nicer than SQL*Plus's PROMPT.
  -- Using these allows prompt-like display to be sturned on or off at a single
  -- central location.
  procedure p(Msg in varchar2);
  procedure p_(Msg in varchar2);

  -- x.Show_State displays in input text in a nice box.
  procedure Show_State(Msg in varchar2);

  procedure Turn_On_Show_Sql;
  procedure Turn_Off_Show_Sql;
  function Show_Sql_On return boolean result_cache;

  -- x.Show_Sql displays a Sql stmt with some context info.
  procedure Show_Sql(
    Stmt                        in varchar2,
    Trampoline_Edition          in varchar2 := null,
    Parallel_Execute            in boolean := false,
    Apply_Crossedition_Trigger  in varchar2 := null,
    Fire_Apply_Trigger          in boolean := null);
end x;
/
grant Execute on OBE_Helper.x to public
/
create or replace public synonym x for OBE_Helper.x
/
create table OBE_Helper.x_Flags (
  Kind varchar2(30) constraint x_Flags_PK primary key,
  Flag varchar2( 1) constraint x_Flags_NN not null)
/
begin
  insert into OBE_Helper.x_Flags(Kind, Flag) values('Show_Sql', 'N');
  commit;
end;
/
-- PLW-06006: uncalled procedure % is removed.
-- PLW-06005: inlining of call of procedure % was done
alter session set Plsql_Warnings = 'Enable:All, Disable:06005, Disable:06006'
/
create package body OBE_Helper.x is
  NL constant varchar2(1) := '
';

  function Msg_With_Margin(Msg in varchar2) return varchar2 is
    Margin constant varchar2(3) := NL||'  ';
  begin
    return Margin||Replace(Msg, NL, Margin)||NL;
  end Msg_With_Margin;

  procedure p(Msg in varchar2) is
  begin
    Sys.DBMS_Output.Put_Line(Msg_With_Margin(Msg));
  end p;

  procedure p_(Msg in varchar2) is
  begin
    Sys.DBMS_Output.Put_Line(
      Msg_With_Margin(Msg)||Rpad('_ ', 50, '_ ')||NL);
  end p_;

  procedure Show_State(Msg in varchar2) is
    Rule            constant varchar2(200) := NL||Rpad('_', 80, '_');
    Margin          constant varchar2(200) := NL||'    ';
    Start_Rule      constant varchar2(200) := Margin||' '||Rpad('_', 70, '_')||' ';
    End_Start_Rule  constant varchar2(200) := Margin||'|'||Rpad('_', 70, '_')||'|';
    Blank_Line      constant varchar2(200) := Margin||'|'||Rpad(' ', 70)     ||'|';

    type Lines_t is table of varchar2(4000) index by pls_integer;
    Lines Lines_t;
  begin
    -- Split Msg into lines.
    declare
      Cur_Pos  integer not null := 1;
      Next_Pos integer not null := 0;
      n pls_integer not null := 0;
    begin
      loop
        n := n + 1;
        Next_Pos := Instr(Msg, NL, Cur_Pos);
        if Next_Pos = 0 then
          -- All that remains
          Lines(n) := Substr(Msg, Cur_Pos);
          exit;
        else
          Lines(n) := Substr(Msg, Cur_Pos, Next_Pos - Cur_Pos);
          Cur_Pos := Next_Pos + 1;
        end if;
      end loop;
    end;

    DBMS_Output.Put(Rule||NL||NL||Start_Rule||Blank_Line);
    for j in 1..Lines.Count() loop
      DBMS_Output.Put(
        Margin||'|'||Rpad('  '||Lines(j), 70)||'|');
    end loop;
    Sys.DBMS_Output.Put_Line(End_Start_Rule||NL);
  end Show_State;

  procedure Turn_On_Show_Sql is
  begin
    update x_Flags f
    set f.Flag = 'Y'
    where f.Kind = 'Show_Sql';
    commit;
  end Turn_On_Show_Sql;

  procedure Turn_Off_Show_Sql is
  begin
    update x_Flags f
    set f.Flag = 'N'
    where f.Kind = 'Show_Sql';
    commit;
  end Turn_Off_Show_Sql;

  function Show_Sql_On return boolean result_cache is
    v x_Flags.Flag%type;
  begin
    select f.Flag
    into Show_Sql_On.v
    from x_Flags f
    where Kind = 'Show_Sql';
    return v = 'Y';
  end Show_Sql_On;

  procedure Show_Sql(
    Stmt                        in varchar2,
    Trampoline_Edition          in varchar2 := null,
    Parallel_Execute            in boolean := false,
    Apply_Crossedition_Trigger  in varchar2 := null,
    Fire_Apply_Trigger          in boolean := null)
  is
    Margin          constant varchar2(200) := NL||'    ';
    Start_Rule      constant varchar2(200) := Margin||' '||Rpad('.',  76, '.')||' ';
    End_Start_Rule  constant varchar2(200) := Margin||''''||Rpad('.', 76, '.')||'''';
    Blank_Line      constant varchar2(200) := Margin||''''||Rpad(' ', 76)     ||'''';

    type Lines_t is table of varchar2(4000) index by pls_integer;
    Lines Lines_t;
  begin
    if Show_Sql_On() then
      -- Split Stmt into lines.
      declare
        Cur_Pos  integer not null := 1;
        Next_Pos integer not null := 0;
        n pls_integer not null := 0;
      begin
        loop
          n := n + 1;
          Next_Pos := Instr(Stmt, NL, Cur_Pos);
          if Next_Pos = 0 then
            -- All that remains
            Lines(n) := Substr(Stmt, Cur_Pos);
            exit;
          else
            Lines(n) := Substr(Stmt, Cur_Pos, Next_Pos - Cur_Pos);
            Cur_Pos := Next_Pos + 1;
          end if;
        end loop;
      end;

      DBMS_Output.Put(Start_Rule||Blank_Line);

      if Trampoline_Edition is not null then
        DBMS_Output.Put(Margin||''''||
          Rpad('  [Using DBMS_Sql "trampoline" into edition '||Trampoline_Edition||'.]', 76, ' ')||''''||
          Blank_Line);
      end if;

      if Parallel_Execute then
        DBMS_Output.Put(Margin||''''||
          Rpad('  [Using DBMS_Parallel_Execute.]', 76, ' ')||''''||
          Blank_Line);
      end if;

      if Apply_Crossedition_Trigger is not null then
        DBMS_Output.Put(Margin||''''||
          Rpad('  [Applying CET '||Apply_Crossedition_Trigger||'.]', 76, ' ')||''''||
          Blank_Line);

        if Fire_Apply_Trigger then
          DBMS_Output.Put(Margin||''''||
            Rpad('  [Firing the CET.]', 76, ' ')||''''||
            Blank_Line);
        else
          DBMS_Output.Put(Margin||''''||
            Rpad('  [Using explicit SQL instead of the CET.]', 76, ' ')||''''||
            Blank_Line);
        end if;
      end if;

      for j in 1..Lines.Count() loop
        DBMS_Output.Put(
          Margin||''''||Rpad('  '||Lines(j), 76)||'''');
      end loop;
      Sys.DBMS_Output.Put_Line(End_Start_Rule);
    end if;
  end Show_Sql;

end x;
/
EXECUTE x.p('Generic helpers created.')
