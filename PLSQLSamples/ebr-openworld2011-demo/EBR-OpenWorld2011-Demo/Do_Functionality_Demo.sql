@@Connect_As_Mini_HR_API
SET LINESIZE 32676
COLUMN "First Name"     FORMAT A15
COLUMN "Last Name"      FORMAT A15
COLUMN "Phone"          FORMAT A19
COLUMN "Ctnry"          FORMAT A5
COLUMN "#"              FORMAT A12

VARIABLE Cur_Var REFCURSOR
VARIABLE Employee_ID NUMBER
--------------------------------------------------------------------------------

begin x.p('
Functionality demo:
  Inspect a sample row using Post_Upgrade
  for (Employee_ID = 131).'); end;
/
EXECUTE x.Show_Sql('alter session set edition = Post_Upgrade')
alter session set edition = Post_Upgrade
/

EXECUTE :Cur_Var := Emp_Mtnc.Employee_Rows_RC(Integers_t(131))
PRINT Cur_Var
--------------------------------------------------------------------------------
-- Confirm that the fwd CET works as intended.
EXECUTE x.p('Inspect the same row using Pre_Upgrade.')
EXECUTE x.Show_Sql('alter session set edition = Pre_Upgrade')
alter session set edition = Pre_Upgrade
/
EXECUTE :Cur_Var := Emp_Mtnc.Employee_Rows_RC(Integers_t(131))
PRINT Cur_Var

EXECUTE x.p('Update using Pre_Upgrade.')
<<Update_One_Row_Pre>>
begin
  Emp_Mtnc.Update_One_Row(
    Employee_ID   => 131,
    Last_Name_    => 1,
    Last_Name     => 'La Tete',
    First_Name_   => 1,
    First_Name    => 'Richard',
    Phone_Number_ => 1,
    Phone_Number  => '515.123.4444');
end Update_One_Row_Pre;
/

EXECUTE x.p('Insert a new row using Pre_Upgrade.')

<<Insert_Townsend>>
begin
  :Employee_ID := Emp_Mtnc.ID_Of_Inserted_Row(
    First_Name_    => 1,  First_Name     => 'Mark',
    Last_Name_     => 1,  Last_Name      => 'Townsend',
    Phone_Number_  => 1,  Phone_Number   => '011.44.131.112.6842',
    Hire_Date_     => 1,  Hire_Date      => '1-Feb-2001',
    Job_ID_        => 1,  Job_ID         => 'MK_MAN',
    Salary_        => 1,  Salary         => 24000,
    Department_ID_ => 1,  Department_ID  => 20);
  commit;
end Insert_Townsend;
/

EXECUTE x.p('Inspect these changes using Pre_Upgrade.')
EXECUTE :Cur_Var := Emp_Mtnc.Employee_Rows_RC(Integers_t(131, :Employee_ID))
PRINT Cur_Var
--------------------------------------------------------------------------------

EXECUTE x.p('Inspect the same rows using Post_Upgrade.')
EXECUTE x.Show_Sql('alter session set edition = Post_Upgrade')
alter session set edition = Post_Upgrade
/
EXECUTE :Cur_Var := Emp_Mtnc.Employee_Rows_RC(Integers_t(131, :Employee_ID))
PRINT Cur_Var

-- Confirm that the rvrs CET works as intended.
EXECUTE x.p('Update row (Employee_ID = 131) using Post_Upgrade and inspect it.')
<<Update_One_Row_Post>>
begin
  Emp_Mtnc.Update_One_Row(
    Employee_ID => 131,
    Country_Code_     => 1,  Country_Code      => '+44',
    Phone_No_In_Ctry_ => 1,  Phone_No_In_Ctry  => '121-472-1234');
end Update_One_Row_Post;
/

EXECUTE :Cur_Var := Emp_Mtnc.Employee_Rows_RC(Integers_t(131))
PRINT Cur_Var
--------------------------------------------------------------------------------

EXECUTE x.p('Inspect the same row using Pre_Upgrade.')
EXECUTE x.Show_Sql('alter session set edition = Pre_Upgrade')
alter session set edition = Pre_Upgrade
/
EXECUTE :Cur_Var := Emp_Mtnc.Employee_Rows_RC(Integers_t(131))
PRINT Cur_Var

EXECUTE x.p('Delete a displayed row using Pre_Upgrade.')
<<Delete_One_Row_Pre>>
begin
  -- The Employee_ID must be outside the range (100..119) that
  -- procedure OBE_Helper.Do_Random_DML changes.
  Emp_Mtnc.Delete_One_Row(150);
end Delete_One_Row_Pre;
/
--------------------------------------------------------------------------------

EXECUTE x.p('Insert a new row using Post_Upgrade.')
EXECUTE x.Show_Sql('alter session set edition = Post_Upgrade')
alter session set edition = Post_Upgrade
/

<<Insert_Bollokhov>>
begin
  :Employee_ID := Emp_Mtnc.ID_Of_Inserted_Row(
    First_Name_       => 1,  First_Name       => 'Terra',
    Last_Name_        => 1,  Last_Name        => 'Bollokhov',
    Country_Code_     => 1,  Country_Code     => '+49',
    Phone_No_In_Ctry_ => 1,  Phone_No_In_Ctry => '126.268.4129',
    Hire_Date_        => 1,  Hire_Date        => '1-Feb-2001',
    Job_ID_           => 1,  Job_ID           => 'MK_MAN',
    Salary_           => 1,  Salary           => 24000,
    Department_ID_    => 1,  Department_ID    => 20);
  commit;
end Insert_Bollokhov;
/
-- Twizzle the new PK to 107 to display it.
-- This is "unofficial" so there's no need for an API for this.
begin
  update Mini_HR_Owner."employees"
  set Employee_ID = -1
  where Employee_ID = 107;

  update Mini_HR_Owner."employees"
  set Employee_ID = 107
  where Employee_ID = :Employee_ID;

  update Mini_HR_Owner."employees"
  set Employee_ID = :Employee_ID
  where Employee_ID = -1;

  commit;
end;
/
EXECUTE x.p('Delete a displayed row using Post_Upgrade.')
<<Delete_One_Row_Pre>>
begin
  -- The Employee_ID must be outside the range (100..119) that
  -- procedure OBE_Helper.Do_Random_DML changes.
  Emp_Mtnc.Delete_One_Row(151);
end Delete_One_Row_Pre;
/

EXECUTE x.Show_Sql('alter session set edition = Pre_Upgrade')
alter session set edition = Pre_Upgrade
/
EXECUTE x.p('Insert a new row using Pre_Upgrade.')
<<Insert_Jobsworth>>
begin
  :Employee_ID := Emp_Mtnc.ID_Of_Inserted_Row(
    First_Name_    => 1,  First_Name     => 'Gordon',
    Last_Name_     => 1,  Last_Name      => 'Jobsworth',
    Phone_Number_  => 1,  Phone_Number   => '011.44.121.452.0672',
    Hire_Date_     => 1,  Hire_Date      => '1-Feb-2001',
    Job_ID_        => 1,  Job_ID         => 'MK_MAN',
    Salary_        => 1,  Salary         => 24000,
    Department_ID_ => 1,  Department_ID  => 20);
  commit;
end Insert_Jobsworth;
/

-- Twizzle the new PK to 109 to display it.
-- This is "unofficial" so there's no need for an API for this.
begin
  update Mini_HR_Owner."employees"
  set Employee_ID = -1
  where Employee_ID = 109;

  update Mini_HR_Owner."employees"
  set Employee_ID = 109
  where Employee_ID = :Employee_ID;

  update Mini_HR_Owner."employees"
  set Employee_ID = :Employee_ID
  where Employee_ID = -1;

  commit;
end;
/

EXECUTE x.p_('Functionality demo complete.')
@@p
