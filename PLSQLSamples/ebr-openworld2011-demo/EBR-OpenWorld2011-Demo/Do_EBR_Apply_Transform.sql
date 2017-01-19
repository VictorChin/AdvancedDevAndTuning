@@Connect_As_Mini_HR_Owner_Using_Post_Upgrade

-- Create the helper procedure
@@Cr_Apply_Transform

<<Enable_CETs>>
declare
  Stmt_1 constant varchar2(200) := 'alter trigger Emp_Fwd_CET enable';
  Stmt_2 constant varchar2(200) := 'alter trigger Emp_Rvrs_CET enable';
begin
  x.Show_Sql(Stmt_1);
  execute immediate Stmt_1;
  x.Show_Sql(Stmt_2);
  execute immediate Stmt_2;
end Enable_CETs;
/
<<Wait_On_Pending_DML>>
declare
  -- Supplying "null" for the ~.Wait_On_Pending_DML()'SCN formal
  -- asks it to get the most current SCN across all instances.
  SCN number := null;
  -- A null or negative value for Timeout will cause a very long wait.
  -- This is symmetrical with our setting DDL_Lock_Timeout to 1,000,000.
  Timeout constant integer := null;
begin
  if not DBMS_Utility.Wait_On_Pending_DML(Tables  => '"employees"',
                                          Timeout => Timeout,
                                          SCN     => SCN)
  then
    Raise_Application_Error(-20000,
     'Wait_On_Pending_DML() timed out. CETs were enabled before SCN: '||SCN);
  end if;
end Wait_On_Pending_DML;
/

begin x.p(
'All txns to "employees" from other sessions
that started before the CETs were enabled
have now committed or rolled back.'); end;
/

<<Apply_Transform>>
begin Apply_Employees_Transform(); end;
/

-- Now that the new phone number representation is populated,
-- we can add the intended "not null" constraints.
begin
  x.Show_Sql(
'-- "modify (Col constraint X not null enable novalidate)"
-- and
-- "modify constraint X enable validate"
-- are nonblocking.
alter session set DDL_Lock_Timeout = 0'); end;
/
<<Add_Not_Null_Constraints>>
declare
  Stmt_1 constant varchar2(32767) :=
'alter table "employees" modify (
  Country_Code      constraint Emp_Country_Code_NN     not null enable novalidate,
  Phone_No_In_Ctry  constraint Emp_Phone_No_In_Ctry_NN not null enable novalidate)';

  Stmt_2 constant varchar2(32767) :=
'alter table "employees" modify
  constraint Emp_Country_Code_NN enable validate
';

  Stmt_3 constant varchar2(32767) :=
'alter table "employees" modify
  constraint Emp_Phone_No_In_Ctry_NN enable validate
';
begin
  x.Show_Sql(Stmt_1);
  execute immediate Stmt_1;

  x.Show_Sql(Stmt_2);
  execute immediate Stmt_2;

  x.Show_Sql(Stmt_3);
  execute immediate Stmt_3;
end;
/

<<Assert_No_Invalids>>
begin Sys.Assert_No_Invalids('Transform applied.'); end;
/
EXECUTE x.p('Transform applied.')
