-- Using With for Temporary Named Subquery
With Q as
(Select C.Cust_Gender,Sum(S.Amount_Sold)
From Sales S Join Customers C on S.Cust_ID = C.Cust_ID
Group by C.Cust_Gender) 
Select * from Q;
-- Using With for Temporary Function
With Function To_Percent(p_input number)
return varchar AS 
Begin
return (To_Char(P_input*100,'999.00') || '%');
End;
Select To_Percent(0.64) from dual;
-- Cascade With
--
-- Analytic Queries , Connect AS sh user

