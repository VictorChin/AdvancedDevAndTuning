create trigger Emp_Rvrs_CET
  before insert or update on "employees"
  for each row
  reverse crossedition
  disable
begin
  :New.Phone_Number :=
    case :New.Country_Code
      when '+1' then
        Replace(:New.Phone_No_In_Ctry, '-', '.')
      else
        '011.'||Ltrim(:New.Country_Code, '+')||'.'||
          Replace(:New.Phone_No_In_Ctry, '-', '.')
    end;
end Emp_Rvrs_CET;
/
