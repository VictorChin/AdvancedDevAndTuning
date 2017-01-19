create or replace trigger Update_Job_History
  after update of Job_ID, Department_ID on Employees
  for each row
  enable
begin
  -- WORKAROUND
  -- Bug 8492300 causes this trigger to fire on update of other columns.
  -- Employees.Job_ID, Employees.Department_ID have not null constraints.
  if :New.Job_ID <> :Old.Job_ID or :New.Department_ID <> :Old.Department_ID then
    Add_Job_History(
      :Old.Employee_ID, 
      :Old.Hire_Date,
      Sysdate(),
      :Old.Job_ID,
      :Old.Department_ID);
  end if;
end Update_Job_History;
/
