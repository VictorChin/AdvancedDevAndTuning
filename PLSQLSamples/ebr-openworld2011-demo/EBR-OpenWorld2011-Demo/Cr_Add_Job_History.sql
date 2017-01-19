create procedure Add_Job_History (
  p_Emp_id          Job_History.Employee_ID%type,
  p_Start_Date      Job_History.Start_Date%type,
  p_End_Date        Job_History.End_Date%type,
  p_Job_ID          Job_History.Job_ID%type,
  p_Department_ID   Job_History.Department_ID%type)
authid Definer is
begin
  insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(p_Emp_id, p_Start_Date, p_End_Date, p_Job_ID, p_Department_ID);
end Add_Job_History;
/
