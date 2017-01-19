@@c
WHENEVER SQLERROR EXIT

SPOOL ../Spool_Files/1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform

@@Do_Create_Post_Upgrade_Edition
@@Do_EBR_DDLs
@@Do_EBR_Apply_Transform
@@Qry_DBA_Objects_AE

begin x.Show_State(
'Post_Upgrade edition is ready for the "touch test".

Notice that end-user DML in Pre_Upgrade
has been running without interruption.

Now we''ll decide: either to keep the Post_Upgrade edition and
retire the Pre_Upgrade edition; or to rollback the EBR exercise
by dropping the Post_Upgrade edition.');end;
/
EXECUTE x.p('Next... @2_EBR1_Task__Touch_Test_Post_Upgrade_Mini_HR_App')

SPOOL OFF
WHENEVER SQLERROR CONTINUE NONE
