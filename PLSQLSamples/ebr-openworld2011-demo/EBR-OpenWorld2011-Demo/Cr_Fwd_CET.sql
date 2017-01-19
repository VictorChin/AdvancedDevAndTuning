-- See ../Fwd_CET_Algorithm for explanation and testing of algorithm.

create trigger Emp_Fwd_CET
  before insert or update on "employees" for each row
  forward crossedition
  disable
declare
  -- Check that Phone_Number contains only periods and digits.
  -- ORA-01722: invalid number as intended if not.
  Dummy constant number :=
    To_Number(
      Replace(:New.Phone_Number, '.'),
      '99999999999999999',
      'NLS_Numeric_Characters = ''.,''');

  Ph_         constant varchar2(20) := Replace(:New.Phone_Number, '.', '-');
  Dot_1_Pos   constant integer      := Instr(:New.Phone_Number, '.', 1);
  Dot_2_Pos   constant integer      := Instr(:New.Phone_Number, '.', 1, 2);

  Intro       constant varchar2(20) :=  Substr(Ph_, 1, Dot_1_Pos);
  Ctry        constant varchar2(20) :=  Substr(Ph_, Dot_1_Pos + 1, Dot_2_Pos - Dot_1_Pos - 1);
  Ph_In_Ctry  constant varchar2(20) :=  Substr(Ph_, Dot_2_Pos + 1);

  Country_Code constant "employees".Country_Code%type :=
    case
      when
        Intro = '011-'
      then
        '+'||Ctry
      else
        '+1'
    end;

  Phone_No_In_Ctry constant "employees".Phone_No_In_Ctry%type :=
    case
      when
        Intro = '011-'
      then
        Ph_In_Ctry
      else
        Ph_
    end;
begin
  :New.Country_Code     := Country_Code;
  :New.Phone_No_In_Ctry := Phone_No_In_Ctry;
end Emp_Fwd_CET;
/
