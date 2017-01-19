-- Use fresh-from-the-seed db.

CONNECT Sys/Sys@11202 AS SYSDBA
COLUMN e FORMAT a20

@@Cr_Generic_Helpers.sql
@@Cr_EBR_Admin_Package.sql

create edition e1 as child of Ora$Base
/
-- Reports "Maximum number of editions reached at: 2000"
declare
  -- maximum number of editions reached
  ORA_38812 exception; pragma Exception_Init(ORA_38812, -38812);
  n number := 1;
begin
  loop
    n := n + 1;
    execute immediate 'create edition e'||n||' as child of e'||(n-1);
    exit when n > 20;
  end loop;
exception when ORA_38812 then
  DBMS_Output.Put_Line('Maximum number of editions reached at: '||n);
end;
/

-- Expect ORA-38805: edition is in use
begin
  Drop_Edition('Ora$Base');
end;
/

-- Expect ORA-38805: edition is in use
begin
  Drop_All_Ancestors_Of_Edn('E15');
end;
/

alter session set edition = e21
/
alter database default edition = e21
/
begin
  Drop_Edition('Ora$Base');
end;
/

select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"') e
from (
  select Level Lev, Edition_Name
  from Sys.DBA_Editions
  connect by prior Edition_Name = Parent_Edition_Name
  start with Parent_Edition_Name is null)
where Lev < (
  select Lev from (
    select Level Lev, Edition_Name
    from Sys.DBA_Editions
    connect by prior Edition_Name = Parent_Edition_Name
    start with Parent_Edition_Name is null)
  where Edition_Name = 'E15')
order by Lev
/

begin
  Drop_All_Ancestors_Of_Edn('E15');
end;
/

select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"') e
from (
  select Level Lev, Edition_Name
  from Sys.DBA_Editions
  connect by prior Edition_Name = Parent_Edition_Name
  start with Parent_Edition_Name is null)
where Lev < (
  select Max(Lev) from (
    select Level Lev, Edition_Name
    from Sys.DBA_Editions
    connect by prior Edition_Name = Parent_Edition_Name
    start with Parent_Edition_Name is null)
  )
order by Lev
/

begin
  Drop_All_Ancestors_Of_Edn();
end;
/

select * from DBA_Editions
/
