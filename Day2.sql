With 
Function To_Pct(p_input number)
return varchar AS 
Begin
return (To_Char(P_input*100,'999.00') || '%');
End;
A as
( SELECT EMPLOYEES.FIRST_NAME,
         EMPLOYEES.LAST_NAME,
         DEPARTMENTS.DEPARTMENT_NAME,SALARY
  FROM EMPLOYEES
  INNER JOIN DEPARTMENTS
        ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID ),
B as (
      Select Department_Name,First_Name,Salary,
      Salary / Sum(Salary) Over (Partition by Department_Name) 
      as PctOfDepartment
      from A)
Select Department_Name, First_Name,Salary,To_Pct(PctOfDepartment)
from B;
--Regexp_Like, Regexp_Instr, Regexp_Substr, Regexp_Replace (redacting data)
--Flashback Reporting
--TimeZone and Interval
Select sysdate + interval '10' day from dual;
Select Sysdate + TO_DSINTERVAL('10 00:00:00') from dual;
alter Table TimeDemo Add (COLG Number(2));
select Sysdate + NumToYMInterval(ColG,'YEAR') from TimeDemo;