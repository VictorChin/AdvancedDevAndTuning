@@Connect_As_Sys
-- Just for this experiment. Niot part of the normal setup!
grant Execute on Sys.DBMS_Redefinition to Mini_HR_Owner
/
grant
  Create Any Table,
  Alter Any Table,
  Drop Any Table,
  Lock Any Table,
  Select Any Table,
  Create Any Trigger,
  Create Any Index
  to Mini_HR_Owner
/
--------------------------------------------------------------------------------

WHENEVER SQLERROR CONTINUE NONE
CLEAR SCREEN
@@Connect_As_Mini_HR_Owner_Using_Post_Upgrade

alter trigger Emp_Rvrs_CET disable
/
create or replace procedure Erase_Xform authid Definer is
begin
  update "employees"
    set Country_Code = '+00', Phone_No_In_Ctry = '000-000-0000';
  commit;
end Erase_Xform;
/
create or replace procedure Check_Apply_Xform authid Definer is
  n integer not null := 1;
begin
  select Count(*)
  into n
  from "employees"
  where Country_Code = '+00'
  or   Phone_No_In_Ctry = '000-000-0000';

  if n > 0 then
    Raise_Application_Error(-20000,
      'Apply_Transform: No. of untransformed rows: '||n);
  end if;
end Check_Apply_Xform;
/
create or replace procedure Time_CTAS authid Definer is
begin
  declare
    -- table or view does not exist
    ORA_00942 exception; pragma Exception_Init(ORA_00942, -00942);
  begin
    execute immediate 'drop table t';
  exception when ORA_00942 then null; end;

  declare
    t0 constant integer not null := Sys.DBMS_Utility.Get_Time();
    t integer not null := 0;
  begin
    execute immediate 'create table t as select * from "employees"';
    execute immediate 'alter table t add constraint t_ID_PK primary key(Employee_ID) enable validate';
    execute immediate 'create index t_Name_IX on t(Last_Name, First_Name)';
    execute immediate 'create index t_Job_IX on t(Job_ID)';
    t := (Sys.DBMS_Utility.Get_Time() - t0)/100.0;
    DBMS_Output.Put_Line('CTAS from "employees": elapsed time: '||t||' sec.');
  end;
end Time_CTAS;
/
create or replace procedure Insert_Select authid Definer is
  t0 integer not null := 0;
  t  integer not null := 0;
begin
  declare
    -- table or view does not exist
    ORA_00942 exception; pragma Exception_Init(ORA_00942, -00942);
  begin
    execute immediate 'drop table t';
  exception when ORA_00942 then null; end;

  t0 := Sys.DBMS_Utility.Get_Time();

  -- Copied and masaged from Cr_Mini_HR_Objects
  execute immediate '
    create table t (
      Employee_ID       number(6) constraint t_Emp_ID_PK primary key disable,
      First_Name        varchar2(20),
      Last_Name         varchar2(25) constraint t_Last_Name_NN not null enable,
      Phone_Number      varchar2(20) constraint t_Phone_Number_NN not null enable,
      Hire_Date         date constraint t_Hire_Date_NN not null enable,
      Job_ID            varchar2(10) constraint t_Job_NN not null enable,
      Salary            number(8,2) constraint t_Salary_NN not null enable,
      Department_ID     number(4) constraint t_Department_ID_NN not null disable,
      Country_Code      varchar2(5) constraint t_Country_Code_NN not null enable,
      Phone_No_In_Ctry  varchar2(20) constraint t_Phone_No_In_Ctry_NN not null enable,
      constraint        t_Salary_Min check (Salary > 0) enable,
      constraint        t_Dept_FK foreign key(Department_ID) references Departments(Department_ID) disable,
      constraint        t_Job_FK foreign key(Job_ID) references Jobs(Job_ID) disable)
    ';

    -- Is it safe to use /*+ Append */ ?
    execute immediate 'insert into t select * from "employees"';
    commit;

  execute immediate 'alter table t enable validate constraint t_Emp_ID_PK';
  execute immediate 'alter table t enable validate constraint t_Department_ID_NN';
  execute immediate 'alter table t enable validate constraint t_Dept_FK';
  execute immediate 'alter table t enable validate constraint t_Job_FK';

  execute immediate 'create index t_Name_IX on t(Last_Name, First_Name)';
  execute immediate 'create index t_Job_IX on t(Job_ID)';

  t := (Sys.DBMS_Utility.Get_Time() - t0)/100.0;
  DBMS_Output.Put_Line('Insert-select from "employees": elapsed time: '||t||' sec.');
end Insert_Select;
/
create or replace procedure DBMS_Redefinition_Excercise authid Definer is
  n pls_integer;
  t0 integer not null := 0;
  t  integer not null := 0;
begin
  declare
    -- table or view does not exist
    ORA_00942 exception; pragma Exception_Init(ORA_00942, -00942);
  begin
    execute immediate 'drop table t$';
  exception when ORA_00942 then null; end;

  t0 := Sys.DBMS_Utility.Get_Time();

  execute immediate '
    create table t$ (
      Employee_ID       number(6),
      First_Name        varchar2(20),
      Last_Name         varchar2(25),
      Phone_Number      varchar2(20),
      Hire_Date         date,
      Job_ID            varchar2(10),
      Salary            number(8,2),
      Department_ID     number(4),
      Country_Code      varchar2(5),
      Phone_No_In_Ctry  varchar2(20))
    ';

  Sys.DBMS_Redefinition.Can_Redef_Table(
    Uname        => 'Mini_HR_Owner',
    Tname        => 't',
    Options_Flag => Sys.DBMS_Redefinition.Cons_Use_PK);

  Sys.DBMS_Redefinition.Start_Redef_Table(
    -- map the original columns directly to the new columns
    Col_Mapping  => null,
    Uname        => 'Mini_HR_Owner',
    Orig_Table   => 't',
    Int_Table    => 't$',
    Options_Flag => Sys.DBMS_Redefinition.Cons_Use_PK);

  Sys.DBMS_Redefinition.Copy_Table_Dependents(
    Uname        => 'Mini_HR_Owner',
    Orig_Table   => 't',
    Int_Table    => 't$',
    Num_Errors   => n);
  if n is null or n <> 0 then
    Raise_Application_Error(20000, 'Num_Errors :'||n);
  end if;

  Sys.DBMS_Redefinition.Finish_Redef_Table(
    Uname        => 'Mini_HR_Owner',
    Orig_Table   => 't',
    Int_Table    => 't$');

  execute immediate 'drop table t$';
  t := (Sys.DBMS_Utility.Get_Time() - t0)/100.0;
  DBMS_Output.Put_Line('DBMS_Redefinition_Excercise: elapsed time: '||t||' sec.');
end DBMS_Redefinition_Excercise;
/
begin x.Turn_Off_Show_Sql(); end;
/
SPOOL ../Spool_Files/Informal_Apply_Xform_Performance_Experiment_Driver
----------------------------------------------------------------------

PROMPT
PROMPT ______________________________________________________________________
PROMPT
PROMPT Plsql_CCflags = 'Parallel_Execute:false, Fire_CET:true'
PROMPT
alter procedure Apply_Employees_Transform compile
  Plsql_CCflags = 'Parallel_Execute:false, Fire_CET:true'
  reuse settings
/
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment


PROMPT
PROMPT ______________________________________________________________________
PROMPT
PROMPT Plsql_CCflags = 'Parallel_Execute:false, Fire_CET:false'
PROMPT
alter procedure Apply_Employees_Transform compile
  Plsql_CCflags = 'Parallel_Execute:false, Fire_CET:false'
  reuse settings
/
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment


PROMPT
PROMPT ______________________________________________________________________
PROMPT
PROMPT Plsql_CCflags = 'Parallel_Execute:true, Fire_CET:true'
PROMPT
alter procedure Apply_Employees_Transform compile
  Plsql_CCflags = 'Parallel_Execute:true, Fire_CET:true'
  reuse settings
/
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment


PROMPT
PROMPT ______________________________________________________________________
PROMPT
PROMPT Plsql_CCflags = 'Parallel_Execute:true, Fire_CET:false'
PROMPT
alter procedure Apply_Employees_Transform compile
  Plsql_CCflags = 'Parallel_Execute:true, Fire_CET:false'
  reuse settings
/
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment
@@Informal_Apply_Xform_Performance_Experiment

----------------------------------------------------------------------
-- Postlude.

EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()
EXECUTE Time_CTAS()

EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()
EXECUTE Insert_Select()

select Table_Name, Constraint_name, Constraint_Type, Status
from User_Constraints
where Table_Name in ('employees', 'T')
order by Table_Name, Constraint_name
/

EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()
EXECUTE DBMS_Redefinition_Excercise()

select Table_Name, Constraint_name, Constraint_Type, Status
from User_Constraints
where Table_Name in ('employees', 'T')
order by Table_Name, Constraint_name
/

----------------------------------------------------------------------
SPOOL OFF
