begin
  Drop_All_Ancestors_Of_Edn('E1000');
end;
/

/*

ORA-38810: Implementation restriction: cannot drop edition that has a parent and a child
ORA-06512: at "SYS.EBR_ADMIN", line 482
ORA-06512: at "SYS.DROP_ALL_ANCESTORS_OF_EDN", line 3
ORA-06512: at line 2

*/




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
  where Edition_Name = 'E1000')
/
