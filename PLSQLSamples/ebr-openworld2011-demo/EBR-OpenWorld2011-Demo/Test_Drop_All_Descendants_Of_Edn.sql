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


begin
  Drop_All_Descendants_Of_Edn('E10');
end;
/

select * from DBA_Editions
/

begin
  Drop_All_Descendants_Of_Edn();
end;
/

select * from DBA_Editions
/
