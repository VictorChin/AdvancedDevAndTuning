@@Connect_As_Mini_HR_Owner

-- This is identical to 0b_Prep_Task__Use_Pre_11gR2_Mini_HR_App
-- except for the "what to run next" prompt.

<<Submt_Rndm_Updts_Job_Pre_Upgd>>
begin
  OBE_Helper.Submit_Random_Updates_Job('Pre_Upgrade');
end Submt_Rndm_Updts_Job_Pre_Upgd;
/

begin x.p('Simulated end-user DML is now running from a DBMS_Session job.

>>>     In a separate concurrent SQL*Plus session, optionally watch
>>>     the simulated Pre_Upgrade application activity thus:
>>>
>>>       @Show_20_Rows_Repeat_Pre_Upgrade
>>>'); end;
/

@@Show_Sql_Status

EXECUTE x.p('Next... @1_EBR1_Task__Cr_New_Edition_Do_DDLs_Apply_Transform')

/*

cd /ade/b/827745936/oracle/log/diag/rdbms/v112/v112/trace

*/
