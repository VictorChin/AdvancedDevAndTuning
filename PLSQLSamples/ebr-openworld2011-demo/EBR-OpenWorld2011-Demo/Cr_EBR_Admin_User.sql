@@Connect_As_Sys
-- Practice the principle of least privilege.
-- Notice that this user does not need to be editions-enabled.
create user EBR_Admin
default tablespace System
identified by p
/
grant Create Session to EBR_Admin
/

-- It is intended that EBR_Admin be able to use any edition
-- at any time. If a regime is followed where only EBR_Admin
-- creates an edition using the API authorized below, then
-- this will always be the case.
-- However, the 0b_Do_Prep_Task__Ready_Mini_HR_App_For_EBR
-- script is intended to work from any starting point as long as
-- Ora$Base exists and all editions are usable.
-- Therefore, grant use on all the existing usable editions to EBR_Admin.
-- Else, conceivably, EBR_Admin might not be able to connect.
<<b>>declare
  type t is table of Sys.DBA_Editions.Edition_Name%type; Editions t;
begin
  select e.Edition_Name
  bulk collect into b.Editions
  from Sys.DBA_Editions e
  where e.Usable = 'YES';
  for j in 1..Editions.Count() loop
    execute immediate 'grant Use on edition "'||Editions(j)||'" to EBR_Admin';
  end loop;
end b;
/

grant Execute on Sys.DBMS_Monitor to EBR_Admin
/

-- We don't want these to be granted to other users.
grant Execute on Sys.Create_Edition to EBR_Admin
/
grant Execute on Sys.Grant_Use_On_Edition to EBR_Admin
/
grant Execute on Sys.Kill_All_Sessions_Using_Edn to EBR_Admin
/
grant Execute on Sys.Set_Default_Edition to EBR_Admin
/
grant Execute on Sys.Retire_Edition to EBR_Admin
/
grant Execute on Sys.All_Backgrounds_Using_Dflt_Edn to EBR_Admin
/
grant Execute on Sys.Drop_Edition to EBR_Admin
/
grant Execute on Drop_All_Descendants_Of_Edn to EBR_Admin
/
grant Execute on Drop_All_Ancestors_Of_Edn to EBR_Admin
/
grant Execute on Sys.Enable_Editions_For_User to EBR_Admin
/
grant Execute on Sys.Drop_All_CETs_In_Current_Edn to EBR_Admin
/
grant Execute on Sys.Drop_All_Covered_Objects to EBR_Admin
/
grant Execute on Sys.Actualize_All to EBR_Admin
/

-- EBR_Admin can safely grant these further.
-- "Execute" on these will be needed by the application owner.
grant Execute on Sys.Assert_No_Invalids to EBR_Admin with grant option
/
grant Execute on Sys.Retry_DDL_With_Timeout_OK to EBR_Admin with grant option
/
grant Execute on Sys.Parallel_Execute to EBR_Admin with grant option
/

-- Useful for ad hoc queries.
grant select on Sys.DBA_Objects to EBR_Admin
/
grant select on Sys.DBA_Objects_AE to EBR_Admin
/
grant select on Sys.DBA_Editions to EBR_Admin
/

EXECUTE x.p('EBR_Admin user created.')
