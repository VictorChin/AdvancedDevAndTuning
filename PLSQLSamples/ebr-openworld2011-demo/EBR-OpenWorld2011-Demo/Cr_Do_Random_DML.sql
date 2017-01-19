-- PLW-06006: uncalled procedure % is removed.
-- PLW-06005: inlining of call of procedure % was done

alter session set Plsql_Warnings = 'Enable:All, Disable:06005, Disable:06006'
/
create procedure OBE_Helper.Do_Random_DML(
  Edition        in All_Editions.Edition_Name%type)
authid Definer is
  Update_Stmt constant varchar2(32767) :=
    case Upper(Edition)
      when 'PRE_UPGRADE' then '
        begin
          Mini_HR_Owner.Emp_Mtnc.Update_One_Row(
            Employee_ID   => :ID,
            Phone_Number_ => 1,      Phone_Number  => :ph);
        end Update_One_Row_Pre;'

      else '
        begin
          Mini_HR_Owner.Emp_Mtnc.Update_One_Row(
            Employee_ID => :ID,
            Country_Code_     => 1,  Country_Code      => :cc,
            Phone_No_In_Ctry_ => 1,  Phone_No_In_Ctry  => :ph);
        end Update_One_Row_Post;'
    end;

  Insert_Stmt constant varchar2(32767) :=
    case Upper(Edition)
      when 'PRE_UPGRADE' then '
        begin
          :ID := Mini_HR_Owner.Emp_Mtnc.ID_Of_Inserted_Row(
            First_Name_    => 1,  First_Name     => ''Random'',
            Last_Name_     => 1,  Last_Name      => ''Insert'',
            Phone_Number_  => 1,  Phone_Number   => Random_Phone_Number.Pre_Upgrade_No(),
            Hire_Date_     => 1,  Hire_Date      => Sysdate(),
            Job_ID_        => 1,  Job_ID         => ''MK_MAN'',
            Salary_        => 1,  Salary         => 24000,
            Department_ID_ => 1,  Department_ID  => 20);
        end Insert_One_Row_Pre;'

      else '
        declare
          r constant Random_Phone_Number.Post_Upgrade_Number_t := Random_Phone_Number.Post_Upgrade_No();
        begin
          :ID := Mini_HR_Owner.Emp_Mtnc.ID_Of_Inserted_Row(
            First_Name_    => 1,  First_Name     => ''Random'',
            Last_Name_     => 1,  Last_Name      => ''Insert'',
            Country_Code_     => 1,  Country_Code     => r.Country_Code,
            Phone_No_In_Ctry_ => 1,  Phone_No_In_Ctry => r.Phone_No_In_Ctry,
            Hire_Date_     => 1,  Hire_Date      => Sysdate(),
            Job_ID_        => 1,  Job_ID         => ''MK_MAN'',
            Salary_        => 1,  Salary         => 24000,
            Department_ID_ => 1,  Department_ID  => 20);
        end Insert_One_Row_Post;'
    end;

  Delete_Stmt constant varchar2(32767) := '
    begin
      Mini_HR_Owner.Emp_Mtnc.Delete_One_Row(:ID);
    end Delete_One_Row_Pre;';

  Update_Cur integer := DBMS_Sql.Open_Cursor(Security_Level => 2);
  Insert_Cur integer := DBMS_Sql.Open_Cursor(Security_Level => 2);
  Delete_Cur integer := DBMS_Sql.Open_Cursor(Security_Level => 2);

  procedure Do_One is
    Update_ID constant integer not null :=
      Random_Integer(100, 119);
    Insert_ID integer not null := 0;
    No_Of_Affected_Rows integer not null := 0;
  begin
    -- Deliberately leave the txns open while sleeping.
    DBMS_Sql.Bind_Variable(Update_Cur, ':ID', Update_ID);
    case Upper(Edition)
      when 'PRE_UPGRADE' then
        DBMS_Sql.Bind_Variable(
          Update_Cur, ':ph', Random_Phone_Number.Pre_Upgrade_No);

      else
        declare
          v Random_Phone_Number.Post_Upgrade_Number_t :=
            Random_Phone_Number.Post_Upgrade_No();
        begin
          DBMS_Sql.Bind_Variable(Update_Cur, ':ph', v.Phone_No_In_Ctry);
          DBMS_Sql.Bind_Variable(Update_Cur, ':cc', v.Country_Code);
        end;
    end case;

    No_Of_Affected_Rows := DBMS_Sql.Execute(Update_Cur);
    if No_Of_Affected_Rows <> 1 then
      Raise_Application_Error(-20000,
        'Do_Random_DML (update): Update_ID: '||Update_ID||' <> 1 row');
    end if;
    Sleep(0.2);
    commit;

    DBMS_Sql.Bind_Variable(Insert_Cur, ':ID', Insert_ID);
    No_Of_Affected_Rows := DBMS_Sql.Execute(Insert_Cur);
    if No_Of_Affected_Rows <> 1 then
      Raise_Application_Error(-20000,
        'Do_Random_DML (insert): <> 1 row');
    end if;
    DBMS_Sql.Variable_Value(Insert_Cur, ':ID', Insert_ID);
    Sleep(0.2);
    commit;

    -- Delete the row we just inserted.
    DBMS_Sql.Bind_Variable(Delete_Cur, ':ID', Insert_ID);
    No_Of_Affected_Rows := DBMS_Sql.Execute(Delete_Cur);
    if No_Of_Affected_Rows <> 1 then
      Raise_Application_Error(-20000,
        'Do_Random_DML (delete): Delete_ID: '||Insert_ID||' <> 1 row');
    end if;
    Sleep(0.2);
    commit;

  end Do_One;
begin
  -- Allow a fallback to Ora$Base for testing in 11.1
  <<b>>declare
    Edn All_Editions.Edition_Name%type;
    n integer not null := -1;
  begin
    select Count(*)
    into b.n
    from All_Editions e
    where e.Edition_Name = Upper(Do_Random_DML.Edition);

    if n <> 1 then
      Edn := 'Ora$Base';
    else
      Edn := Edition;
    end if;

    DBMS_Output.Put_Line('Edn: '||Edn);

    DBMS_Sql.Parse(
      c              => Update_Cur,
      Language_Flag  => DBMS_Sql.Native,
      Statement      => Update_Stmt,
      Edition        => Edn);

    DBMS_Sql.Parse(
      c              => Insert_Cur,
      Language_Flag  => DBMS_Sql.Native,
      Statement      => Insert_Stmt,
      Edition        => Edn);

    DBMS_Sql.Parse(
      c              => Delete_Cur,
      Language_Flag  => DBMS_Sql.Native,
      Statement      => Delete_Stmt,
      Edition        => Edn);
  end b;

  -- Supress PLW-06002: Unreachable code
  -- Carry on for ever. Kill session will terminate this.
  declare
    Forever constant pls_integer := 2**31 - 1;
  begin
    -- Approx 35 years!
    for j in 1..Forever loop
      Do_One();
    end loop;
  end;

  DBMS_Sql.Close_Cursor(Update_Cur);
  DBMS_Sql.Close_Cursor(Insert_Cur);
  DBMS_Sql.Close_Cursor(Delete_Cur);
end Do_Random_DML;
/
grant execute on OBE_Helper.Do_Random_DML to Mini_HR_Owner
/
