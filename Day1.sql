Select E.Department_ID, Sum(Salary) as TotalSal
From
Employees E
Group By E.Department_ID;
-- Add Analytic Running Total
With T as (Select E.Department_ID, Sum(Salary) as TotalSal
From
Employees E
Group By E.Department_ID)
Select Department_ID, Sum(TotalSal) OVER (Order By Department_ID)
From T;
-- Add Comment
Select count(*) from SH.Customers;
Grant Select Any Table To HR;
--  Sales Join Time Sum(Amount_Sold) + 3Month Moving Average
-- 1 - Simplify your query using inline view
--1999   Jan    100  100
--1999   Feb    300  200
--1999   Mar    500  300
With MonthlySales AS (
  Select T.Calendar_Year Year, 
  T.CALENDAR_MONTH_NAME Month,
  T.CALENDAR_MONTH_NUMBER MonthNum,
  Sum(Amount_Sold) as Total
  From SH.Sales S Join SH.Times T ON S.Time_ID = T.Time_ID
  Group By T.Calendar_Year, T.CALENDAR_MONTH_NAME,T.CALENDAR_MONTH_NUMBER
  Order By T.Calendar_Year,T.CALENDAR_MONTH_NUMBER),--<this comma chains another inline view
ThreeMVAndRank AS (Select Year,Month, Total, 
Round( Avg(Total) over (Partition By Year order by Year,MonthNum Rows between 2 Preceding AND Current Row)) 
As RunningAvg,
Rank() Over (Partition By Year Order By Total DESC) As RankWithInYear,
MonthNum
from MonthlySales 
Order By Year,MonthNum)
Select Year,Month,Total,
Total - Lag(Total,12) Over (Order By Year,MonthNum) YoYSameMonth from ThreeMVAndRank;
--Select * from ThreeMVAndRank Where RankWithInYear <=3 Order By 1,5;


Select 
1
from dual where RegExp_Like('My name is victor Chin contact me via email @ victor@objectmage.com or call 555-1212',
'\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}');

Select 
Regexp_Instr(
'My name is victor Chin contact me via email @ victor@objectmage.com or call 555-1212',
'\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}')
from dual;

Select 
Regexp_Replace(
'My name is victor Chin contact me via email @ victor@objectmage.com or call 555-1212',
'\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}','[removed]')
from dual;

Select 
Regexp_SubStr(
'My name is victor Chin contact me via email @ victor@objectmage.com or call 555-1212',
'\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}')
from dual;

-- Create Filtered Word List using Regexp_Like and Regexp_Replace
Create Table WordList
(wordID number(3),
 word  varchar(20));
 insert into WordList Values(1,'\d{2,3}MB');
 commit;
 select RegExp_Replace(Prod_desc,W.Word,'[removed]'),
 RegExp_Substr(Prod_desc,W.Word)
 from SH.Products P
 LEFT JOIN SH.WordList W on RegExp_Like(P.Prod_Desc,W.Word); 
 
 -- Flashback Oracle --
 select sum (Salary) from employees;
select min(Salary) from employees as of
Timestamp (systimestamp - interval '5' minute);
Grant Execute on DBMS_Flashback to HR;

-- bring the session back in time so all queries become flashback query
select To_TimeStamp('16-Jan-2017 4:00:00.00 PM') from dual;
exec dbms_flashback.enable_at_time(To_TimeStamp('16-Jan-2017 4:00:00.00 PM'));
select sum (Salary) from employees;
select department_name from departments;
exec dbms_flashback.disable();
-- See the data change over time, attention to
-- the pseudo columns
select first_name,Salary, versions_operation,rawtohex(versions_xid) xid, versions_starttime
  from employees
   versions between scn minvalue and maxvalue
  where employee_id = 100;
-- server does not need to request a lock of any sort on the table

-- Generating a report across large number of tables that is consistent
-- of a specific time, Stock closing, Month Ends 12:00:00AM, 
-- in a single SQL with JOIN, the entire query is consistent.
-- if the query is broken down to multiple query, how do we ensure 
-- data consistency?

Create Table TimeDemo
(
ColA Date,
ColB TimeStamp,
ColC TimeStamp With Time Zone,
ColD TimeStamp With Local Time Zone,
ColE Interval Year to Month,
ColF Interval Day to Second);
Insert into TimeDemo
Values(SysDate,Current_Timestamp,Current_Timestamp,
Current_Timestamp,'12-6','+45 6:30:30.00');
Commit;
select Cold + ColE from TimeDemo;

Select Current_Timestamp 
+ interval '-40' Year from dual;

Select Current_Timestamp 
+ interval '60' Day from dual;






