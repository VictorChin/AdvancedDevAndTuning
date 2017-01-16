-- Using With for Temporary Named Subquery
With Q as
(Select C.Cust_Gender,Sum(S.Amount_Sold)
From Sales S Join Customers C on S.Cust_ID = C.Cust_ID
Group by C.Cust_Gender)
Select * from Q;
-- Using With for Temporary Function


-- Analytic Queries , Connect AS sh user

