@@Connect_As_Mini_HR_Owner_Using_Post_Upgrade

-- We use execute immediate simply as a means to display the actual SQL that's
-- used with x.Show_Sql()

--------------------------------------------------------------------------------
-- Notice that these not null columns have no meaningful default.
-- We must use an interim bogus default to avoid ORA-01758.
-- We must wait until the apply is done to get rid of this interim default.
--
-- This DDL patiently waits FOREVER if another session has uncommitted DML.
-- But it is nonblocking: DMLs in other session that are stared while it
-- is waiting do NOT queue up behind it.

-- Will add Emp_Country_Code_NN and Emp_Phone_No_In_Ctry_NN not null constraints
-- when the "apply" step has been done.
begin
  x.Show_Sql(
'-- "add defaulted not null column" is nonblocking.
alter session set DDL_Lock_Timeout = 0'); end;
/
declare
  Stmt constant varchar2(32767) := q'[alter table "employees" add (
  Country_Code varchar2(5),
  Phone_No_In_Ctry varchar2(20))]';
begin
  x.Show_Sql(Stmt);
  execute immediate Stmt;
end;
/
--------------------------------------------------------------------------------

declare
  Stmt constant varchar2(32767) := 'create or replace editioning view Employees as
  select
    Employee_ID,
    First_Name,
    Last_Name,
    Hire_Date,
    Job_ID,
    Salary,
    Department_ID,
    Country_Code,
    Phone_No_In_Ctry
from "employees"';
begin
  x.Show_Sql(Stmt);
  execute immediate Stmt;
end;
/

-- Reprogram the API subprograms.
EXECUTE x.Show_Sql('create or replace package Emp_Mtnc authid Definer is...')
@@Cr_Emp_Mtnc_Package_Post_Upgrade

-- Create Fwd and Rvrs CET.

begin x.Show_Sql('create trigger Emp_Fwd_CET
  before insert or update on "employees" for each row
  forward crossedition
  disable
begin
  ...');
end;
/
@@Cr_Fwd_CET

begin x.Show_Sql('create trigger Emp_Rvrs_CET
  before insert or update on "employees"
  for each row
  reverse crossedition
  disable
begin
  ...');
end;
/
@@Cr_Revrs_CET

<<Assert_No_Invalids>>
begin Sys.Assert_No_Invalids('DDLs done.'); end;
/
EXECUTE x.p('DDLs done.')
@@p
