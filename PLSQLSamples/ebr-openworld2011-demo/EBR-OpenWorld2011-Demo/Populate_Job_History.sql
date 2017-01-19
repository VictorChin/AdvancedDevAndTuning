<<Insert_Into_Job_History>>
begin

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(101, '21-Sep-1997', '27-Oct-2001', 'AC_ACCOUNT', 110)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(200, '01-Jul-2002', '31-Dec-2006', 'AC_ACCOUNT', 90)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(101, '28-Oct-2001', '15-Mar-2005', 'AC_MGR', 110)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(200, '17-Sep-1995', '17-Jun-2001', 'AD_ASST', 90)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(102, '13-Jan-2001', '24-Jul-2006', 'IT_PROG', 60)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(201, '17-Feb-2004', '19-Dec-2007', 'MK_REP', 20)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(176, '01-Jan-2007', '31-Dec-2007', 'SA_MAN', 80)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(176, '24-Mar-2006', '31-Dec-2006', 'SA_REP', 80)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(114, '24-Mar-2006', '31-Dec-2007', 'ST_CLERK', 50)
;

insert into Job_History(Employee_ID, Start_Date, End_Date, Job_ID, Department_ID)
  values(122, '01-Jan-2007', '31-Dec-2007', 'ST_CLERK', 50)
;

commit;
end Insert_Into_Job_History;
/
