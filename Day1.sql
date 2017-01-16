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

