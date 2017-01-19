alter session set Plsql_CCflags = 'Parallel_Execute:true, Fire_CET:false'
/
create or replace procedure Apply_Employees_Transform authid Definer is

  Fire_Apply_Trigger constant boolean :=
    $if $$Fire_CET $then
      true
    $else
      false
    $end
    ;

  Bare_Stmt constant varchar2(32767) :=

    $if $$Fire_CET $then

      'update "employees" set Employee_ID = Employee_ID'

    $else

q'{update (

  select

    Country_Code,
    Phone_No_in_Ctry,

    case
      when
        Intro = '011-'
      then
        '+'||Ctry
      else
        '+1'
    end Country_Code_Expr,

    case
      when
        Intro = '011-'
      then
        Ph_In_Ctry
      else
        Ph_
    end Phone_No_in_Ctry_Expr

  from (
    select
      Country_Code,
      Phone_No_in_Ctry,
      Ph_,
      Substr(Ph_, 1, Dot_1_Pos)                             Intro,
      Substr(Ph_, Dot_1_Pos + 1, Dot_2_Pos - Dot_1_Pos - 1) Ctry,
      Substr(Ph_, Dot_2_Pos + 1)                            Ph_In_Ctry
    from (
      select
        -- Check that Phone_Number contains only periods and digits.
        -- ORA-01722: invalid number as intended if not.
        To_Number(Replace(Phone_Number, '.'),
                          '99999999999999999',
                          'NLS_Numeric_Characters = ''.,''')  Dummy,
        Country_Code,
        Phone_No_in_Ctry,
        Replace(Phone_Number, '.', '-')                       Ph_,
        Instr(Phone_Number, '.', 1)                           Dot_1_Pos,
        Instr(Phone_Number, '.', 1, 2)                        Dot_2_Pos
      from "employees"
      )
    )
  )
set
  Country_Code = Country_Code_Expr,
  Phone_No_in_Ctry = Phone_No_in_Ctry_Expr
    }'

  $end
    ;

  $if $$Parallel_Execute $then
    Stmt constant varchar2(32767) :=
      Bare_Stmt||'
  where Rowid between :Start_ID and :End_ID
    ';
  $else
    Cur integer := DBMS_Sql.Open_Cursor(Security_Level => 2);
    No_Of_Updated_Rows integer not null := 0;
    Stmt constant varchar2(32767) := Bare_Stmt;
  $end

  t0 constant integer not null := Sys.DBMS_Utility.Get_Time();
begin
  $if $$Parallel_Execute $then

    Sys.Parallel_Execute(
      Task_Name                   => 'Apply_Xform',
      Table_Owner                 => 'MINI_HR_OWNER',
      Table_Name                  => 'employees',
      Chunk_Size                  => 1000,

      Stmt                        => Stmt,
      Apply_Crossedition_Trigger  => 'Emp_Fwd_CET',
      Fire_Apply_Trigger          => Fire_Apply_Trigger,

      Parallel_Level              => 4);

  $else

    x.Show_Sql(
      Stmt                        => Stmt,
      Apply_Crossedition_Trigger  => 'Emp_Fwd_CET',
      Fire_Apply_Trigger          => Fire_Apply_Trigger);

    DBMS_Sql.Parse(
      c                          => Cur,
      Language_Flag              => DBMS_Sql.Native,
      Statement                  => Stmt,
      Apply_Crossedition_Trigger => 'Emp_Fwd_CET',
      Fire_Apply_Trigger         => Fire_Apply_Trigger);

    No_Of_Updated_Rows := DBMS_Sql.Execute(Cur);
    DBMS_Sql.Close_cursor(Cur);
    commit;

  $end

  declare
    t constant integer not null := (Sys.DBMS_Utility.Get_Time() - t0)/100.0;
  begin
    DBMS_Output.Put_Line('Apply_Employees_Transform: elapsed time: '||t||' sec.');
  end;
end;
/
