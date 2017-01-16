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
Order By T.Calendar_Year,T.CALENDAR_MONTH_NUMBER)
Select Year,Month, Total, Avg(Total) over (order by Year,Month) from MonthlySales;



