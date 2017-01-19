@@c
WHENEVER SQLERROR EXIT
SPOOL ../Spool_Files/0a_Prep_Task__Install_Pre_11gR2_Mini_HR_App

@@Do_Kill_All_Foreground_Sessions
@@Cr_Generic_Helpers

EXECUTE x.Turn_Off_Show_Sql()

@@Do_Drop_Users
@@Cr_EBR_Admin_Package
@@Cr_EBR_Admin_User

-- To test in 11.1, comment out Do_Re_Establish_Pre_Upgrade_Edn.
@@Do_Re_Establish_Pre_Upgrade_Edn

@@Cr_Mini_HR_Users
@@Cr_Mini_HR_Objects
@@Cr_Helpers_To_Simulate_Regular_App_Use
@@Cr_Mini_HR_API_Synonyms

@@Connect_As_Mini_HR_Owner
<<Assert_No_Invalids>>
begin Sys.Assert_No_Invalids('Pre-11gR2 Mini_HR App set up.'); end;
/

EXECUTE x.Show_State('Pre-11gR2 Mini_HR App set up.')
EXECUTE x.p('Next... @0b_Prep_Task__Use_Pre_11gR2_Mini_HR_App')

SPOOL OFF
WHENEVER SQLERROR CONTINUE NONE
