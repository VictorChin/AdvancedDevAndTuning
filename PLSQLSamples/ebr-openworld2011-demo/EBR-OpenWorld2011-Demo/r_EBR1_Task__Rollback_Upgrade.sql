@@c
WHENEVER SQLERROR EXIT
SPOOL ../Spool_Files/r_EBR1_Task__Rollback_Upgrade

@@Connect_As_EBR_Admin
<<Set_Default_To_Pre_Upgrade>>
begin
  Sys.Set_Default_Edition('Pre_Upgrade');
  Sys.Set_Session_Edition('Pre_Upgrade');
  Sys.Retire_Edition('Post_Upgrade');
end Set_Default_To_Pre_Upgrade;
/
EXECUTE x.p('Pre_Upgrade re-established as default.')

<<Kill_All_Post_Upgrade_Sessions>>
begin
  OBE_Helper.Drop_Random_Updates_Job('Post_Upgrade');
  Sys.Kill_All_Sessions_Using_Edn('Post_Upgrade');
end Kill_All_Post_Upgrade_Sessions;
/
EXECUTE x.p('All Post_Upgrade sessions killed.')

@@Connect_As_Mini_HR_Owner

-- Drop the not null constraints on the new columns so that inserting rows
-- doesn't cause ORA-01400:
-- cannot insert NULL into ("MINI_HR_OWNER"."employees"...)
-- when the Rvrs CET vanishes with "drop edition Post_Upgrade cascade".
<<Drop_Post_Upgrade_Constraints>>
declare
  -- Nonexistent constraint
  ORA_02443 exception; pragma exception_Init(ORA_02443, -02443);

  Drop_Emp_Country_Code_NN constant varchar2(200) :=
    'alter table "employees" drop constraint Emp_Country_Code_NN';
  Drop_Emp_Phone_No_In_Ctry_NN constant varchar2(200) :=
    'alter table "employees" drop constraint Emp_Phone_No_In_Ctry_NN';
begin
  begin
    if not Sys.Retry_DDL_With_Timeout_OK(DDL_Stmt => Drop_Emp_Country_Code_NN)
    then
      Raise_Application_Error(-20000, '"drop constraint Emp_Country_Code_NN": timed out');
    end if;
  exception when ORA_02443 then null; end;

  begin
    if not Sys.Retry_DDL_With_Timeout_OK(DDL_Stmt => Drop_Emp_Phone_No_In_Ctry_NN)
    then
      Raise_Application_Error(-20000, '"drop constraint Emp_Phone_No_In_Ctry_NN": timed out');
    end if;
  exception when ORA_02443 then null; end;
end Drop_Post_Upgrade_Constraints;
/

@@Connect_As_EBR_Admin
<<Drop_Post_Upgrade>>
begin
  if not Sys.All_Backgrounds_Using_Dflt_Edn(60) then
    Raise_Application_Error(-20000, 'All_Backgrounds_Using_Dflt_Edn timed out.');
  end if;
  Sys.Drop_All_Descendants_Of_Edn('Pre_Upgrade');
  --Sys.Drop_Edition('Post_Upgrade');
  Sys.Assert_No_Invalids('Post_Upgrade edition is dropped.');
end Drop_Post_Upgrade;
/
EXECUTE x.p('Post_Upgrade edition is dropped.')
@@p

-- Recoup space.
@@Connect_As_Mini_HR_Owner

--------------------------------------------------------------------------------
-- Use Sys.DBMS_Parallel_Execute so that we don't
-- lock out other users while we're doing this.

<<Rollback_Set_To_Null>>
declare
  OK_To_Proceed boolean not null := true;
  Stmt constant varchar2(200) := 
'update "employees"
  set Country_Code = null, Phone_No_In_Ctry = null
  where Rowid between :Start_ID and :End_ID';
begin
  declare
    -- table or view does not exist
    ORA_00942 exception; pragma Exception_Init(ORA_00942, -00942);
    -- e.g. "PHONE_NO_IN_CTRY": invalid identifier
    ORA_00904 exception; pragma Exception_Init(ORA_00904, -00904);
  begin
    execute immediate
      'update "employees"
        set Country_Code = null, Phone_No_In_Ctry = null
        where Rownum < 1';
  exception when ORA_00942 or ORA_00904 then
    OK_To_Proceed := false;
  end;

  if OK_To_Proceed then
    Sys.Parallel_Execute(
      Task_Name                   => 'Rollback_Set_To_Null',
      Table_Owner                 => 'MINI_HR_OWNER',
      Table_Name                  => 'employees',
      Chunk_Size                  => 1000,

      Stmt                        => Stmt,

      Parallel_Level              => 4);
    x.p('Rollback_Set_To_Null using Parallel_Execute done.');
  end if;
end Rollback_Set_To_Null;
/

--------------------------------------------------------------------------------

<<Set_Post_Upgrade_Cols_Unused>>
declare
  -- invalid identifier
  ORA_00904 exception; pragma exception_Init(ORA_00904, -00904);
  -- table does not exist
  ORA_00942 exception; pragma exception_Init(ORA_00942, -00942);
  Set_Unused constant varchar2(200) := 
'alter table "employees"
  set unused (Country_Code, Phone_No_In_Ctry)';
begin
  if not Sys.Retry_DDL_With_Timeout_OK(DDL_Stmt => Set_Unused)
  then
    Raise_Application_Error(-20000, 'Set_Post_Upgrade_Cols_Unused: timed out');
  end if;
exception when ORA_00904 or ORA_00942 then null;
end Set_Post_Upgrade_Cols_Unused;
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
  -- invalid identifier
  ORA_00904 exception; pragma exception_Init(ORA_00904, -00904);
  Shrink constant varchar2(200) := 
'alter table "employees" shrink space';
begin
  x.Show_Sql(Shrink);
  begin
    execute immediate Shrink;
  exception when ORA_00904 then null; end;
end Shrink_Space;
/

begin x.p('Columns meant for the Post_Upgrade app are hidden.
The space they used is recouped.'); end;
/
@@p

<<Assert_No_Invalids>>
begin Sys.Assert_No_Invalids('Post_Upgrade rolled back.'); end;
/

@@Qry_DBA_Objects_AE
begin x.Show_State('The pristine Pre_Upgrade app is restored.

Notice that end-user DML in Pre_Upgrade
has been running without interruption.');end;
/
@@Show_Sql_Status

EXECUTE x.p('Next, repeat... @1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform')

SPOOL OFF
WHENEVER SQLERROR CONTINUE NONE
