VARIABLE No_Of_Repeats NUMBER

@@Do_Kill_All_Foreground_Sessions

EXECUTE Sleep(5)
begin
  OBE_Helper.Submit_Random_Updates_Job('Pre_Upgrade');
end Submt_Rndm_Updts_Job_Pre_Upgd;
/
EXECUTE x.p('Simulated Pre_Upgrade end-user DML is now running from a DBMS_Session job.')
EXECUTE x.Turn_On_Show_Sql()

@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := 0

-- 1,000 repetitions follow
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
@@1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform
@@3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App
@@r_EBR1_Task__Rollback_Upgrade

EXECUTE :No_Of_Repeats := :No_Of_Repeats + 1
SPOOL ../Spool_Files/Stress_Test_Rollback
PROMPT Stress_Test_Rollback
EXECUTE DBMS_Output.Put_Line('No_Of_Repeats: '||:No_Of_Repeats)
SPOOL OFF
----------------------------------------------------------------------
