@@Connect_As_Mini_HR_Owner

--------------------------------------------------------------------------------
-- For each table, create the Populate_* script in a one-time step
-- by starting Cr_Populate_* and massaging the spooled output
-- by hand by surrounding with "<<Insert_Into_*>>begin... commit; end;".
--------------------------------------------------------------------------------
-- Departments.
create table Departments (
  Department_ID        number(4) not null constraint Dept_ID_PK primary key disable,
  Department_Name      varchar2(30) constraint Dept_Name_NN not null enable,
  Manager_ID           number(6),
  Location_ID          number(4))
/
@@Populate_Departments

alter table Departments enable validate constraint Dept_ID_PK
/
create index Dept_Location_IX on Departments(Location_ID)
/
--------------------------------------------------------------------------------
-- Jobs.
create table Jobs (
  Job_ID            varchar2(10) constraint Job_ID_PK primary key disable,
  Job_Title         varchar2(35) constraint Job_Title_NN not null enable,
  Min_Salary        number(6),
  Max_Salary        number(6))
/
@@Populate_Jobs

alter table Jobs enable validate constraint Job_ID_PK
/
--------------------------------------------------------------------------------
-- Employees.
-- Notice that Phone_Number has a not null constraint. The Sample Schema version
-- has no such constraint. It's added here to support an important teaching point
-- to do with when constraints relevant for the new edition can be enabled, and when
-- constraints relevant for the old edition must be disable.
-- It does seem to reflect the real world of office workers.
create table Employees (
  Employee_ID      number(8) constraint Emp_Emp_ID_PK primary key disable,
  First_Name       varchar2(20),
  Last_Name        varchar2(25) constraint Emp_Last_Name_NN not null enable,

  Phone_Number     varchar2(20) constraint Emp_Phone_Number_NN not null enable,

  Hire_Date        date constraint Emp_Hire_Date_NN not null enable,
  Job_ID           varchar2(10) constraint Emp_Job_NN not null enable,
  Salary           number(8,2) constraint Emp_Salary_NN not null enable,
  Department_ID    number(4) constraint Emp_Department_ID_NN not null disable,
  constraint       Emp_Salary_Min check (Salary > 0) enable,
  constraint       Emp_Dept_FK foreign key(Department_ID) references Departments(Department_ID) disable,
  constraint       Emp_Job_FK foreign key(Job_ID) references Jobs(Job_ID) disable)
/

@@Populate_Employees

-- Fix up the weird violation in the shipped data.
update Employees
set Department_ID = 80
where Department_ID is null
/
alter table Employees enable validate constraint Emp_Department_ID_NN
/

@@Synthesize_More_Employees

alter table Employees enable validate constraint Emp_Emp_ID_PK
/
<<Cr_Employees_Seq>>
declare
  subtype ID_t is Employees.Employee_ID%type not null;
  function Max_Employee_ID_ return ID_t;
  Max_Employee_ID constant ID_t := Max_Employee_ID_;

  function Max_Employee_ID_ return ID_t is
    v ID_t := 0;
  begin
    select Max(Employee_ID) into v from Employees;
    return v;
  end Max_Employee_ID_;
begin
  x.p('Max(Employee_ID): '||Max_Employee_ID);
  execute immediate '
    create sequence Employees_Seq
      start with '||To_Char(Max_Employee_ID + 1);
end Cr_Employees_Seq;
/

create trigger Set_Employees_PK
  before insert on Employees for each row
begin
  :New.Employee_ID := Employees_Seq.Nextval;
end Set_Employees_PK;
/

create index Emp_Name_IX on Employees(Last_Name, First_Name)
/
create index Emp_Job_IX on Employees(Job_ID)
/
create index Emp_Department_IX on Employees(Department_ID)
/

-- (This is just an illustration.)
grant References on Employees to Scott
/
grant All on Employees to Scott
/
--------------------------------------------------------------------------------
-- Job_History.
create table Job_History (
  Employee_ID    number(6) constraint Jhist_Employee_NN not null enable,
  Start_Date     date constraint Jhist_Start_Date_NN not null enable,
  End_Date       date constraint Jhist_End_Date_NN not null enable,
  Job_ID         varchar2(10) constraint Jhist_Job_NN not null enable,
  Department_ID  number(4),
  constraint     Jhist_Emp_ID_St_Date_PK primary key(Employee_ID, Start_Date) disable,
  constraint     Jhist_Date_Interval check (End_Date > Start_Date) enable,
  constraint     Jhist_Job_FK foreign key (Job_ID) references Jobs (Job_ID) disable,
  constraint     Jhist_Emp_FK foreign key (Employee_ID) references Employees (Employee_ID) disable,
  constraint     Jhist_Dept_FK foreign key (Department_ID) references Departments (Department_ID) disable)
/
@@Populate_Job_History

alter table Job_History enable validate constraint Jhist_Emp_ID_St_Date_PK
/
create index Jhist_Employee_IX on Job_History(Employee_ID)
/
create index Jhist_Job_IX on Job_History(Job_ID)
/
create index Jhist_Department_IX on Job_History(Department_ID)
/
--------------------------------------------------------------------------------
-- Now that the data is all in place, enable FK constraints.
alter table Employees enable validate constraint Emp_Dept_FK
/
alter table Employees enable validate constraint Emp_Job_FK
/
alter table Job_History enable validate constraint Jhist_Job_FK
/
alter table Job_History enable validate constraint Jhist_Emp_FK
/
alter table Job_History enable validate constraint Jhist_Dept_FK
/
--------------------------------------------------------------------------------

@@Cr_Add_Job_History
@@Cr_Update_Job_History

-- API API subprograms.
@@Cr_Emp_Mtnc_Package_Pre_Upgrade

--------------------------------------------------------------------------------

EXECUTE x.p('Mini HR objects created.')
