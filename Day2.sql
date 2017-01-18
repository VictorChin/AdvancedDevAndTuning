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


Select /*+ PARALLEL(SH.Sales 4) */ Sum(Amount_Sold) 
From SH.Sales Where Time_ID 
Between to_Date('01-Jan-2000') AND to_Date('01-Jan-2001');
ww
Select count(*)
From SH.Sales Where To_Char(Time_ID,'YYYY Q')= '1999 1';
/
-- Dont forget to create indexes on your FK to speed up your PK Table Update/Delete PK
select count(distinct cust_gender)--
-- M  000011000001100111111000101010110000
-- F  111100111110011000000111010101001111
-- each bit maps to a row 
from Sh.Customers;
select count(distinct cust_Marital_Status) -- 
from Sh.Customers;
-- get first ten rows using bitmap index
Select Count(*) from Sh.Customers
Where Cust_Gender='M' AND Cust_Marital_Status='single'
;
-- use of bitmap index, serializes DML across the entire table/partition.
Select count(*) from Sh.Customers
Where cust_first_name ='Abigail'; -- with Index on first_name
-- we are doing Range Scan

-- Create a btree index on FirstName
Create index sh.Cust_First_Name on SH.CUSTOMERS(cust_First_Name);
-- the following execution plan applies substr function on ALL Indexed
-- First_Name before the comparison can be made.
Select count(*) from Sh.Customers
Where SubStr(cust_first_name,1,3)= 'Abi';

Drop index sh.Cust_First_Name;
-- custom making Function Based Index that will be optimal for the query
Create Index sh.Cust_First_Name on
SH.CUSTOMERS(SubStr(cust_First_Name,1,3));
-------------^^^^^^^^^^^^^^^^^^^^^^^^^^^--- that's the function
Select count(*) from Sh.Customers
Where SubStr(cust_first_name,1,3)= 'Abi';
-- THIS WHOLE INDEX/TABLE DATA MAKES SENSE ONLY when we store data
-- in a row by row format.
-- [there are other storage format out there.....]
-- like In Memory Table,Columnar Index.......


-- Hiearchical Query --
Desc Employees;

Select Worker.First_Name || ' works under ' || Boss.First_Name
From Employees Worker Join Employees Boss ON
     worker.Manager_ID = Boss.Employee_ID;

-- Hiearchical 
Select Employee_ID,First_Name,Last_Name,
level, SYS_CONNECT_BY_PATH(First_name || Last_Name, '/') as Path,
CONNECT_BY_ISLEAF AS leaf,
CONNECT_BY_ROOT Employee_ID
From Employees
Start With Employee_Id=100
Connect By    Manager_ID = Prior Employee_ID
Order By level;

-- More Hiearchical Query
Select Employee_ID,First_Name,Last_Name,
level, SYS_CONNECT_BY_PATH(First_name || Last_Name, '/') as Path,
CONNECT_BY_ISLEAF AS leaf,
CONNECT_BY_ROOT Employee_ID
From Employees
Start With Employee_Id=100
Connect By   Manager_ID =Prior   Employee_ID 
Order By level;
/
-- Group By with Rollup And Cube
Select Prod_Category,Prod_SubCategory,Sum(Amount_Sold)
,Grouping(Prod_SubCategory)
From Sh.Sales S Natural join Sh.Products P
Group By Cube(P.Prod_Category,P.Prod_SubCategory);
-- Grouping Sets
-- Union all multiple group by query, no rollup or cube implied.
Select Prod_Category,Prod_SubCategory,Prod_Unit_Of_Measure,Prod_Weight_Class,Sum(Amount_Sold)
,Prod_Status
From Sh.Sales S Natural join Sh.Products P
Group By Grouping SetS(
(P.Prod_Category,P.Prod_SubCategory),
(Prod_Unit_Of_Measure,Prod_Weight_Class),
Prod_Status)
;
-- Expression List
Select count(*) from Sh.Products
where (Prod_Category_ID,Prod_SubCategory_ID) IN 
((203,2031),(203,2032));

-- Sequence -> Identity
Create Table IdentTable 
( ColA number(5) GENERATED AS IDENTITY,
  ColB varchar(10));
insert into IdentTable(ColB)
  values('test');
  select * from IdentTable;
 
 -- Sequence As Default
 Create Sequence MySeq;
 Create Table DemeSeq
 (ColA Number default MySeq.NextVal,
  ColB varchar(5));
 
 insert into DemeSeq(ColB)
 Values('tes3');
 select * from demeseq;
 
 -- Result Cache -- 
 
Select /*+ RESULT_CACHE */
Department_Name
From Departments;


