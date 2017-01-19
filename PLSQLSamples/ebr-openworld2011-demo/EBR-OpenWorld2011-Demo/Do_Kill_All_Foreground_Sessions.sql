@@Connect_As_Sys

EXECUTE DBMS_Output.Put_Line('Killing all foreground sessions except this one...')

<<Drop_OBE_Jobs>>
declare
  type t is table of varchar2(32767); Job_Names t;
begin
  select '"'||j.Owner||'"."'||j.Job_Name||'"' Job_Name
  bulk collect into Job_Names
  from Sys.DBA_Scheduler_Jobs j
  where j.Owner in ('OBE_HELPER', 'EBR_ADMIN', 'MINI_HR_OWNER', 'MINI_HR_API');

  for j in 1..Job_Names.Count() loop
    Sys.DBMS_Scheduler.Drop_Job(
      Job_Name          => Job_Names(j),
      Force             => true);
  end loop;
end Drop_OBE_Jobs;
/
--------------------------------------------------------------------------------
set role ADM_Parallel_Execute_Task
/
<<Drop_Parallel_Execute_Jobs>>
declare
  type t1 is table of Sys.DBA_Parallel_Execute_Tasks.Task_Owner %Type; Task_Owners t1;
  type t2 is table of Sys.DBA_Parallel_Execute_Tasks.Task_Name  %Type; Task_Names  t2;
begin
  select t.Task_Owner, t.Task_Name
  bulk collect into Task_Owners, Task_Names
  from Sys.DBA_Parallel_Execute_Tasks t
  where t.Task_Owner in ('OBE_HELPER', 'EBR_ADMIN', 'MINI_HR_OWNER', 'MINI_HR_API');

  for j in 1..Task_Names.Count() loop
    Sys.DBMS_Parallel_Execute.Adm_Drop_Task(Task_Owners(j), Task_Names(j));
  end loop;
end Drop_Parallel_Execute_Jobs;
/
--------------------------------------------------------------------------------
-- This logic here, and most of the code, is identical to what's implemented in
-- Sys.EBR_Admin.Kill_All_Sessions_Using_Edn(). However, we need this to be
-- an anonymous block with no dependencies except upon objects that ship
-- with the standard seed dbatabase 'cos it's needed in various bootstrap
-- situations.
-- For example, we can't use x.p() here because it might be in  use!
<<Kill_All_Foreground_Sessions>>
declare
  NL constant varchar(1) := '
';
  -- User session ID does not exist
  ORA_00030 exception; pragma Exception_Init(ORA_00030, -00030);

  -- session marked for kill
  ORA_00031 exception; pragma Exception_Init(ORA_00031, -00031);

  subtype Sid_t is Sys.v_$MyStat.Sid%type;
  function My_Sid_ return Sid_t;
  My_Sid constant Sid_t not null := My_Sid_();

  Cursor Target_Foreground_Sessions_Cur is
    select s.Sid, s.Serial#
    from Sys.v_$Session s
    where s.Sid <> Kill_All_Foreground_Sessions.My_Sid
    and s.Username is not null;
  type t is table of Target_Foreground_Sessions_Cur%rowtype; Target_Foreground_Sessions t;

  function My_Sid_ return Sid_t is
    v Sid_t;
  begin
    select distinct m.Sid
    into My_Sid_.v
    from Sys.v_$MyStat m;
    return v;
  end My_Sid_;
begin
  loop
    open Target_Foreground_Sessions_Cur;
    fetch Target_Foreground_Sessions_Cur bulk collect into Target_Foreground_Sessions;
    close Target_Foreground_Sessions_Cur;
    exit when Target_Foreground_Sessions.Count() = 0;

    for j in 1..Target_Foreground_Sessions.Count() loop
      declare
        Stmt constant varchar2(200) :=
          'alter system kill session '''||
          Target_Foreground_Sessions(j).Sid||', '||Target_Foreground_Sessions(j).Serial#||
          ''' immediate';
      begin
        execute immediate Stmt;
      exception
        when ORA_00030 or ORA_00031 then null;
      end;
    end loop;
    -- See action for ORA-00031.
    -- We may need to wait for "kill" to take effect.
    Sys.DBMS_Lock.Sleep(2);
  end loop;
  DBMS_Output.Put_Line('...all killed.'||NL||Rpad('_ ', 50, '_ ')||NL);
end Kill_All_Foreground_Sessions;
/
