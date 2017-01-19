@@Connect_As_EBR_Admin

VARIABLE Root VARCHAR2(32)

<<Set_Default_Edition_To_Root>>
begin
  select Sys.DBMS_Assert.Simple_Sql_Name('"'||Edition_Name||'"')
  into :Root
  from Sys.DBA_Editions
  where Parent_Edition_Name is null;

  Sys.Grant_Use_On_Edition(:Root, 'EBR_Admin');
  Sys.Set_Session_Edition(:Root);

  Sys.Set_Default_Edition(:Root);
  if not Sys.All_Backgrounds_Using_Dflt_Edn(60) then
    Raise_Application_Error(-20000, 'All_Backgrounds_Using_Dflt_Edn timed out.');
  end if;
end Set_Default_Edition_To_Root;
/

<<Re_Establish_Pre_Upgrade_Edn>>
begin
  -- Drop all editions except the root
  Sys.Drop_All_Descendants_Of_Edn();

  -- Re-create Pre_Upgrade for pedagogically nice start point.
  Sys.Create_Edition('Pre_Upgrade');
  Sys.Set_Default_Edition('Pre_Upgrade');
  Sys.Retire_Edition(:Root);
  Sys.Assert_No_Invalids('Pre_Upgrade edition re-established.');
end Re_Establish_Pre_Upgrade_Edn;
/
EXECUTE x.p_('Pre_Upgrade edition re-established.')
