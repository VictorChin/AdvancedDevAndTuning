@@Connect_As_Mini_HR_Owner
--------------------------------------------------------------------------------
-- Employees table

alter table Employees rename to "employees"
/
alter table "employees" enable row movement
/

-- We regard the maintenance of the surrogate PK as belonging to
-- the "physical" table domain, just like the PK constraint itself.
-- So recreate Trigger Set_Employees_PK with updated source code.
create or replace trigger Set_Employees_PK
  before insert on "employees" for each row
begin
  :New.Employee_ID := Employees_Seq.Nextval;
end Set_Employees_PK;
/
create editioning view Employees as
  select
    Employee_ID,
    First_Name,
    Last_Name,
    Phone_Number,
    Hire_Date,
    Job_ID,
    Salary,
    Department_ID
  from "employees"
/

-- Re-run the "create" scripts for all triggers on Employees "as is"
-- to move them to the EV.
-- All, that is, except from the one that populates the surrogate PK 'cos
-- this is best considered to be morally the same as other table-level constraints.
drop trigger Update_Job_History
/
@@Cr_Update_Job_History

-- Move object privileges (except References) that used to be on the table to the EV.
-- (This is just an illustration.)
revoke All on "employees" from Scott
/
grant References on "employees" to Scott
/
grant All on Employees to Scott
/

-- "Unofficial" (breaks encapsulation) to allow unofficial update
-- of Employee_ID to make demo more dramatic.
grant All on Mini_HR_Owner."employees" to Mini_HR_API
/
--------------------------------------------------------------------------------
-- To_do...
-- Do the same for the other tables.

EXECUTE x.p('Mini_HR_Owner''s objects readied for EBR.')
