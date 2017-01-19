@@c
WHENEVER SQLERROR EXIT
SPOOL ../Spool_Files/3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App

@@Connect_As_EBR_Admin
<<Publish_Post_Upgrade_Edition>>
begin Sys.Set_Default_Edition('Post_Upgrade'); end;
/
EXECUTE x.p('Post_Upgrade edition published')

@@Connect_As_Mini_HR_Owner_Using_Post_Upgrade
<<Submt_Rndm_Updts_Job_Post_Upgd>>
begin
  OBE_Helper.Submit_Random_Updates_Job('Post_Upgrade');
end Submt_Rndm_Updts_Job_Post_Upgd;
/
EXECUTE x.p('Simulated end-user DML is now running from a DBMS_Session job.')

@@Do_Functionality_Demo

begin x.Show_State(
'This is HOT ROLLOVER!

DMLs are coming in from both Pre_Upgrade and Post_Upgrade.
Both FORWARD and REVERSE crossedition triggers are firing.
This regime can continue indefinitely.

There is no possibility of conflicts
and so no later need for conflict resolution.

Next, we''ll retire the Pre_Upgrade irrevocably.'); end;
/
EXECUTE x.p('Next... @4_EBR1_Task__Retire_Pre_Upgrade_Edition')

SPOOL OFF
WHENEVER SQLERROR CONTINUE NONE
