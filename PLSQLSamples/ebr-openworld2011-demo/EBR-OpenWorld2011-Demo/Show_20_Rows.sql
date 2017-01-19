SET LINESIZE 32676
COLUMN "First Name"     FORMAT A15
COLUMN "Last Name"      FORMAT A15
COLUMN "Phone"          FORMAT A19
COLUMN "Cntry"          FORMAT A5
COLUMN "#"              FORMAT A12

VARIABLE Cur_Var REFCURSOR
CLEAR SCREEN

EXECUTE :Cur_Var := Emp_Mtnc.Employee_Rows_RC()
PRINT Cur_Var

<<Sleep_4>> begin Sleep(4); end;
/
