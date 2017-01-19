@@c
WHENEVER SQLERROR EXIT
SPOOL ../Spool_Files/5_EBR2_Task__Null_Upgrade


@@Connect_As_EBR_Admin
<<Create_New_Base>>
begin
  Sys.Create_Edition('New_Base');
  Sys.Set_Default_Edition('New_Base');
  Sys.Set_Session_Edition('New_Base');
end Create_New_Base;
/
<<Retire_Post_Upgrade>>
declare
  type t is table of All_Editions.Edition_Name%type; e_Names t;
begin
  Sys.Retire_Edition('Post_Upgrade');
  OBE_Helper.Drop_Random_Updates_Job('Post_Upgrade');

  -- Need to kill sessions using any ancestor edition.
  select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"')
  bulk collect into e_Names
  from (
    select Level Lvl, Edition_Name
    from Sys.DBA_Editions
    connect by prior Edition_Name = Parent_Edition_Name
    start with Parent_Edition_Name is null)
  where Lvl < (
    select Max(Lvl) from (
      select Level Lvl, Edition_Name
      from Sys.DBA_Editions
      connect by prior Edition_Name = Parent_Edition_Name
      start with Parent_Edition_Name is null)
    )
  order by Lvl;
  for j in 1..e_Names.Count() loop
    Sys.Kill_All_Sessions_Using_Edn(e_Names(j));
  end loop;
end Retire_Post_Upgrade;
/
EXECUTE x.p('All Post_Upgrade sessions killed.')

<<Re_Establish_New_Baseline>>
begin
  if not Sys.All_Backgrounds_Using_Dflt_Edn(60) then
    Raise_Application_Error(-20000, 'All_Backgrounds_Using_Dflt_Edn timed out.');
  end if;
  Sys.Actualize_All();
  Sys.Drop_All_Covered_Objects();
  Sys.Drop_All_Ancestors_Of_Edn();
  Sys.Assert_No_Invalids('New baseline established with just one edition');
end Re_Establish_New_Baseline;
/

<<Submt_Rndm_Updts_Job_New_Base>>
begin
  OBE_Helper.Submit_Random_Updates_Job('New_Base');
end Submt_Rndm_Updts_Job_New_Base;
/
EXECUTE x.p('Simulated end-user DML is now running from a DBMS_Session job.')

@@Qry_DBA_Objects_AE

EXECUTE x.Show_State('Post_Upgrade is now the ONLY edition.')

EXECUTE x.p('To repeat the OBE, restore the fresh-from-the-seed db from a cold backup.')

SPOOL OFF
WHENEVER SQLERROR CONTINUE NONE
