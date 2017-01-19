@@c
WHENEVER SQLERROR EXIT
SPOOL ../Spool_Files/0c_Prep_Task__Ready_Mini_HR_App_For_EBR

@@Do_Kill_All_Foreground_Sessions
EXECUTE x.p('*** Readying an app for EBR is a strictly offline operation ***')

@@Connect_As_EBR_Admin
EXECUTE x.Turn_On_Show_Sql()
<<Enable_Editions_For_Mini_HR>>
begin
  Sys.Enable_Editions_For_User('Mini_HR_Owner');
  Sys.Enable_Editions_For_User('Mini_HR_API');
  Sys.Assert_No_Invalids('Mini_HR_Owner and Mini_HR_API editions-enabled');
end Enable_Editions_For_Mini_HR;
/
EXECUTE x.Turn_Off_Show_Sql()
EXECUTE x.p('Mini_HR_Owner and Mini_HR_API editions-enabled')

@@Do_Ready_Mini_HR_Objects_For_EBR
@@Connect_As_EBR_Admin

<<Drop_All_Covered_Objects>>
begin
  Sys.Drop_All_Covered_Objects();
  Sys.Assert_No_Invalids('All "covered" objects dropped.');
end Drop_All_Covered_Objects;
/
EXECUTE x.p('All "covered" editioned objects dropped.')

@@Qry_DBA_Objects_AE
EXECUTE x.Show_State('Mini HR App is EBR-ready.')
EXECUTE x.p('Next... @0d_Prep_Task__Use_Pre_Upgrade_Mini_HR_App')

SPOOL OFF
WHENEVER SQLERROR CONTINUE NONE
