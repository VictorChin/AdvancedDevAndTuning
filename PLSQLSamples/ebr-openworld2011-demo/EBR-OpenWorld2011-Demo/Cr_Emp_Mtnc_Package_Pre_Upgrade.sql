alter session set Plsql_Warnings = 'Enable:All'
/
alter session set edition = Pre_Upgrade
/
create or replace package Mini_HR_Owner.Emp_Mtnc authid Definer is
  Unassigned_Date constant date := To_Date(1, 'j');

  type Employees_Rowtype is record(
    Employee_ID    Employees.Employee_ID   %type not null := -1,
    First_Name     Employees.First_Name    %type,
    Last_Name      Employees.Last_Name     %type not null := '?',
    Phone_Number   Employees.Phone_Number  %type not null := '011.00.000.000.0000',
    Hire_Date      Employees.Hire_Date     %type not null := Unassigned_Date,
    Job_ID         Employees.Job_ID        %type not null := '?',
    Salary         Employees.Salary        %type not null := -1,
    Department_ID  Employees.Department_ID %type not null := -1);

  function Employee_Rows_RC(
    Employee_IDs in Integers_t := null)
    return Sys_Refcursor;

  function ID_Of_Inserted_Row(
    First_Name_     in integer                       := 0,
    First_Name      in Employees.First_Name    %type := null,

    Last_Name_      in integer                       := 0,
    Last_Name       in Employees.Last_Name     %type := null,

    Phone_Number_   in integer                       := 0,
    Phone_Number    in Employees.Phone_Number  %type := null,

    Hire_Date_      in integer                       := 0,
    Hire_Date       in Employees.Hire_Date     %type := null,

    Job_ID_         in integer                       := 0,
    Job_ID          in Employees.Job_ID        %type := null,

    Salary_         in integer                       := 0,
    Salary          in Employees.Salary        %type := null,

    Department_ID_  in integer                       := 0,
    Department_ID   in Employees.Department_ID %type := null)

    return             Employees.Employee_ID   %type;

  procedure Delete_One_Row(
    Employee_ID     in Employees.Employee_ID   %type);

  procedure Update_One_Row(
    Employee_ID     in Employees.Employee_ID   %type,

    First_Name_     in integer                       := 0,
    First_Name      in Employees.First_Name    %type := null,

    Last_Name_      in integer                       := 0,
    Last_Name       in Employees.Last_Name     %type := null,

    Phone_Number_   in integer                       := 0,
    Phone_Number    in Employees.Phone_Number  %type := null,

    Hire_Date_      in integer                       := 0,
    Hire_Date       in Employees.Hire_Date     %type := null,

    Job_ID_         in integer                       := 0,
    Job_ID          in Employees.Job_ID        %type := null,

    Salary_         in integer                       := 0,
    Salary          in Employees.Salary        %type := null,

    Department_ID_  in integer                       := 0,
    Department_ID   in Employees.Department_ID %type := null);
end Emp_Mtnc;
/

create or replace package body Mini_HR_Owner.Emp_Mtnc is

  function Employee_Rows_RC(
    Employee_IDs in Integers_t := null)
    return Sys_Refcursor
  is
    Cur_Var Sys_Refcursor;
  begin
    if Employee_IDs is null then
      open Cur_Var for
        select
          First_Name      "First Name",
          Last_Name       "Last Name",
          Phone_Number    "Phone"
        from Employees e
        where e.Employee_ID between 100 and 119
        order by Employee_ID;

    else
      open Cur_Var for
        select
          First_Name      "First Name",
          Last_Name       "Last Name",
          Phone_Number    "Phone"
        from Employees e
        where e.Employee_ID in (
          select Column_Value from table(Employee_Rows_RC.Employee_IDs))
        order by Employee_ID;

    end if;
    return Cur_Var;
  end Employee_Rows_RC;

  function ID_Of_Inserted_Row(
    First_Name_     in integer                       := 0,
    First_Name      in Employees.First_Name    %type := null,

    Last_Name_      in integer                       := 0,
    Last_Name       in Employees.Last_Name     %type := null,

    Phone_Number_   in integer                       := 0,
    Phone_Number    in Employees.Phone_Number  %type := null,

    Hire_Date_      in integer                       := 0,
    Hire_Date       in Employees.Hire_Date     %type := null,

    Job_ID_         in integer                       := 0,
    Job_ID          in Employees.Job_ID        %type := null,

    Salary_         in integer                       := 0,
    Salary          in Employees.Salary        %type := null,

    Department_ID_  in integer                       := 0,
    Department_ID   in Employees.Department_ID %type := null)

    return             Employees.Employee_ID   %type
  is
    New_Row Employees_Rowtype;
    Employee_ID Employees.Employee_ID%type;
  begin
    if First_Name_  = 1 then
      New_Row.First_Name := First_Name;
    end if;

    if Last_Name_  = 1 then
      New_Row.Last_Name := Last_Name;
    end if;

    if Phone_Number_  = 1 then
      New_Row.Phone_Number := Phone_Number;
    end if;

    if Hire_Date_  = 1 then
      New_Row.Hire_Date := Hire_Date;
    end if;

    if Job_ID_  = 1 then
      New_Row.Job_ID := Job_ID;
    end if;

    if Salary_  = 1 then
      New_Row.Salary := Salary;
    end if;

    if Department_ID_  = 1 then
      New_Row.Department_ID := Department_ID;
    end if;

    insert into Employees e
    values ID_Of_Inserted_Row.New_Row
    returning e.Employee_ID into ID_Of_Inserted_Row.Employee_ID;

    commit;
    return Employee_ID;
  end ID_Of_Inserted_Row;

  procedure Delete_One_Row(
    Employee_ID     in Employees.Employee_ID   %type)
  is
  begin
    delete from Employees e
    where e.Employee_ID = Delete_One_Row.Employee_ID;
    commit;
  end Delete_One_Row;

  procedure Update_One_Row(
    Employee_ID     in Employees.Employee_ID   %type,

    First_Name_     in integer                       := 0,
    First_Name      in Employees.First_Name    %type := null,

    Last_Name_      in integer                       := 0,
    Last_Name       in Employees.Last_Name     %type := null,

    Phone_Number_   in integer                       := 0,
    Phone_Number    in Employees.Phone_Number  %type := null,

    Hire_Date_      in integer                       := 0,
    Hire_Date       in Employees.Hire_Date     %type := null,

    Job_ID_         in integer                       := 0,
    Job_ID          in Employees.Job_ID        %type := null,

    Salary_         in integer                       := 0,
    Salary          in Employees.Salary        %type := null,

    Department_ID_  in integer                       := 0,
    Department_ID   in Employees.Department_ID %type := null)
  is
  begin
    update  Employees e
    set     e.First_Name = case First_Name_
              when 0 then e.First_Name
              else Update_One_Row.First_Name
            end,

            e.Last_Name = case Last_Name_
              when 0 then e.Last_Name
              else Update_One_Row.Last_Name
            end,

            e.Phone_Number = case Phone_Number_
              when 0 then e.Phone_Number
              else Update_One_Row.Phone_Number
            end,

            e.Hire_Date = case Hire_Date_
              when 0 then e.Hire_Date
              else Update_One_Row.Hire_Date
            end,

            e.Job_ID = case Job_ID_
              when 0 then e.Job_ID
              else Update_One_Row.Job_ID
            end,

            e.Salary = case Salary_
              when 0 then e.Salary
              else Update_One_Row.Salary
            end,

            e.Department_ID = case Department_ID_
              when 0 then e.Department_ID
              else Update_One_Row.Department_ID
            end
    where   e.Employee_ID = Update_One_Row.Employee_ID;

    commit;
  end Update_One_Row;
end Emp_Mtnc;
/
-- To allow OBE_Helper.Do_Random_DML to work.
grant Execute on Mini_HR_Owner.Emp_Mtnc to Mini_HR_API, OBE_Helper
/
