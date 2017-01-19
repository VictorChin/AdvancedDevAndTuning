-- This is a list of the scripts the implement the "macro" tasks
-- that define this OBE.
--
-- IT ALSO SERVES AS A HANDS-OFF END-TO-END TEST.
--------------------------------------------------------------------------------
-- The scripts in this first set make only changes whose effect can be
-- wiped out by by SQL or PL/SQL.
-- Therefore, at any point, the OBE can simply be abandoned and
-- the "setup" script can be run to give you a clean start.

@@0a_Prep_Task__Install_Pre_11gR2_Mini_HR_App
@@0b_Prep_Task__Use_Pre_11gR2_Mini_HR_App
@@0c_Prep_Task__Ready_Mini_HR_App_For_EBR
@@0d_Prep_Task__Use_Pre_Upgrade_Mini_HR_App

EXECUTE x.Turn_On_Show_Sql()

-- Mini stress test: rollback and redo a few times.

@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@2_EBR1_Task__Touch_Test_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@2_EBR1_Task__Touch_Test_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@2_EBR1_Task__Touch_Test_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

-- You need, of course, to repeat step 1 of the EBR exercise
-- after rolling back in order to carry on.
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@2_EBR1_Task__Touch_Test_Post_Upgrade_Mini_HR_App
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@4_EBR1_Task__Retire_Pre_Upgrade_Edition

--------------------------------------------------------------------------------
-- This script drops editions. Therefore, the starting state for the OBE
-- cannot be restored by SQL or PL/SQL. Rather, you need to restore from
-- a cold backup.

-- @@5_EBR2_Task__Null_Upgrade
