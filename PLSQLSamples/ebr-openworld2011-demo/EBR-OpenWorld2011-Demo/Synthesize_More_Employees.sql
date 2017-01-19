<<Synthesize_More_Employees>>
declare
  Target_Number_Of_Rows constant pls_integer := 100000;

  subtype Employee_ID_t is Employees.Employee_ID%type not null;
  subtype Salary_t is Employees.Salary%type not null;

  No_Of_Rows pls_integer not null := 0;

  t0 constant integer not null := DBMS_Utility.Get_CPU_Time();
  type t is table of Employees%rowtype index by pls_integer;
  Employee_Rows t; New_Employee_Rows t;

  function Max_Employee_ID_ return Employee_ID_t;
  Max_Employee_ID constant Employee_ID_t := Max_Employee_ID_();

  function Max_Hire_Date_Julian_ return integer;
  Max_Hire_Date_Julian constant integer := Max_Hire_Date_Julian_();

  function Min_Hire_Date_Julian_ return integer;
  Min_Hire_Date_Julian constant integer := Min_Hire_Date_Julian_();

  function Max_Salary_ return Salary_t;
  Max_Salary constant Salary_t := Max_Salary_();

  function Min_Salary_ return Salary_t;
  Min_Salary constant Salary_t := Min_Salary_();

  function Max_Employee_ID_ return Employee_ID_t is
    n Employee_ID_t not null := 0;
  begin
    select Max(Employee_ID)
    into n
    from Employees;
    return n;
  end Max_Employee_ID_;

  function Max_Hire_Date_Julian_ return integer is
    d date not null := To_Date(1, 'J');
  begin
    select Max(Hire_Date)
    into d
    from Employees;
    return To_Number(To_Char(d, 'J'));
  end Max_Hire_Date_Julian_;

  function Min_Hire_Date_Julian_ return integer is
    d date not null := To_Date(1, 'J');
  begin
    select Min(Hire_Date)
    into d
    from Employees;
    return To_Number(To_Char(d, 'J'));
  end Min_Hire_Date_Julian_;

  function Max_Salary_ return Salary_t is
    s Salary_t := 0;
  begin
    select Max(Salary)
    into s
    from Employees;
    return s;
  end Max_Salary_;

  function Min_Salary_ return Salary_t is
    s Salary_t := 0;
  begin
    select Min(Salary)
    into s
    from Employees;
    return s;
  end Min_Salary_;
begin
  select *
  bulk collect into Employee_Rows
  from Employees;

  declare
    No_Of_Original_Rows constant integer := Employee_Rows.Count();
    Employee_ID Employee_ID_t := Max_Employee_ID;
    Batch_Number pls_integer not null := 0;
  begin
    -- Leave First_Name, Job_ID and Department_ID as is.
    for j in 1..No_Of_Original_Rows loop
      New_Employee_Rows(j).First_Name    := Employee_Rows(j).First_Name;
      New_Employee_Rows(j).Job_ID        := Employee_Rows(j).Job_ID;
      New_Employee_Rows(j).Department_ID := Employee_Rows(j).Department_ID;
    end loop;

    No_Of_Rows := No_Of_Original_Rows;
    loop
      Batch_Number := Batch_Number + 1;
      for j in 1..No_Of_Original_Rows loop
        Employee_ID := Employee_ID + 1;
        New_Employee_Rows(j).Employee_ID := Employee_ID;

        New_Employee_Rows(j).Last_Name := Employee_Rows(j).Last_Name||
          '_'||Ltrim(To_Char(Batch_Number, '000000'));
        New_Employee_Rows(j).Phone_Number := Random_Phone_Number.Pre_Upgrade_No();
        New_Employee_Rows(j).Hire_Date :=
          To_Date(Random_Integer(
            Min_Hire_Date_Julian, Max_Hire_Date_Julian), 'J');
        New_Employee_Rows(j).Salary := Random_Integer(Min_Salary, Max_Salary);
      end loop;

      forall j in 1..New_Employee_Rows.Count()
        insert /*+ Append */ into Employees values New_Employee_Rows(j);
      commit;

      No_Of_Rows := No_Of_Rows + No_Of_Original_Rows;
      exit when No_Of_Rows > Target_Number_Of_Rows;
    end loop;
  end;

  declare
    t constant integer not null := (DBMS_Utility.Get_CPU_Time() - t0)/100.0;
  begin
    x.p('Synthesize_More_Employees: '||t||
        ' sec. New Count(*) from Employees: '||No_Of_Rows);
  end;
end Synthesize_More_Employees;
/
