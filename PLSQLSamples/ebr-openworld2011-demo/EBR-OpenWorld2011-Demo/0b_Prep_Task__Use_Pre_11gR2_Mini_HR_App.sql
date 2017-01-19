@@Connect_As_Mini_HR_Owner

-- Notice that 0d_Prep_Task__Use_Pre_Upgrade_Mini_HR_App is cloned from this script
-- so that it can have a different "what to run next" prompt

<<Submt_Rndm_Updts_Job_Pre_Upgd>>
begin
  OBE_Helper.Submit_Random_Updates_Job('Pre_Upgrade');
end Submt_Rndm_Updts_Job_Pre_Upgd;
/

begin x.p('Simulated end-user DML is now running from a DBMS_Session job.

>>>     In a separate concurrent SQL*Plus session, optionally watch
>>>     the simulated pre-11gR2 application activity thus:
>>>
>>>       @Show_20_Rows_Repeat_Pre_Upgrade
>>>'); end;
/

EXECUTE x.p('Next... @0c_Prep_Task__Ready_Mini_HR_App_For_EBR')
