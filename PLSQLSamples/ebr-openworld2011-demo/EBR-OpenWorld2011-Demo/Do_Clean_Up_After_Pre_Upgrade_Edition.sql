@@Connect_As_Mini_HR_Owner

-- This helper isn't part of the real app.
drop procedure Apply_Employees_Transform
/

-- Recoup space.
-- Drop the not null constraint on Phone_Number
-- else, without the Rvrs CET, inserts in Post_Upgrade will fail.
<<Drop_Pre_Upgrade_Constraints>>
declare
  Drop_Emp_Phone_Number_NN constant varchar2(200) :=
    'alter table "employees" drop constraint Emp_Phone_Number_NN';
begin
  if not Sys.Retry_DDL_With_Timeout_OK(DDL_Stmt => Drop_Emp_Phone_Number_NN)
  then
    Raise_Application_Error(-20000, 'Drop_Pre_Upgrade_Constraints: timed out');
  end if;
end Drop_Pre_Upgrade_Constraints;
/
EXECUTE x.p('Pre_Upgrade constraints dropped.')

@@Connect_As_EBR_Admin
<<Drop_CETs_And_Covered_Objects>>
begin
  Sys.Drop_All_CETs_In_Current_Edn();
  Sys.Drop_All_Covered_Objects();
end Drop_CETs_And_Covered_Objects;
/
EXECUTE x.p('All crossedition triggers and covered actual objects dropped.')
--------------------------------------------------------------------------------

@@Connect_As_Mini_HR_Owner

-- Else we lock out other users while we're doing this.
<<Set_Phone_Number_Null>>
declare
  Stmt constant varchar2(200) := 
'update "employees" set Phone_Number = null
  where Rowid between :Start_ID and :End_ID';
begin
  Sys.Parallel_Execute(
    Task_Name                   => 'Set_Phone_Number_Null',
    Table_Owner                 => 'MINI_HR_OWNER',
    Table_Name                  => 'employees',
    Chunk_Size                  => 1000,

    Stmt                        => Stmt,

    Parallel_Level              => 4);
end Set_Phone_Number_Null;
/
--------------------------------------------------------------------------------

<<Set_Pre_Upgrade_Column_Unused>>
declare
  Set_Unused constant varchar2(200) := 
'alter table "employees" set unused column Phone_Number';
begin
  if not Sys.Retry_DDL_With_Timeout_OK(DDL_Stmt => Set_Unused)
  then
    Raise_Application_Error(-20000, 'Set_Pre_Upgrade_Column_Unused: timed out');
  end if;
end Set_Pre_Upgrade_Column_Unused;
/

-- This DDL patiently waits FOREVER if another session has uncommitted DML.
-- But it is nonblocking: DMLs in other session that are stared while it
-- is waiting do NOT queue up behind it.
begin
  x.Show_Sql(
'-- "shrink space" is nonblocking.
alter session set DDL_Lock_Timeout = 0'); end;
/
alter session set DDL_Lock_Timeout = 0
/
<<Shrink_Space>>
declare
  Shrink constant varchar2(200) := 
'alter table "employees" shrink space';
begin
  x.Show_Sql(Shrink);
  execute immediate Shrink;
end Shrink_Space;
/

EXECUTE x.p('Pre_Edition columns are dropped. Space is recovered.')

<<Assert_No_Invalids>>
begin Sys.Assert_No_Invalids('Pre_Upgrade edition is retired.'); end;
/
