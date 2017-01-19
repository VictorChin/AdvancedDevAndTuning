@@Connect_As_Mini_HR_Owner_Using_Post_Upgrade

begin x.p('>>>     In a separate concurrent SQL*Plus session, optionally watch
>>>     the simulated Pre_Upgrade application activity thus:
>>>
>>>       @Show_20_Rows_Repeat_Post_Upgrade
>>>'); end;
/

-- SQL*PLus can't take the @ character as the first
-- on ANY line, even when it's inside a quoted string.
declare NL constant varchar2(1) := '
';
begin
  x.p('Next either:'                ||NL||NL||
'  @r_EBR1_Task__Rollback_Upgrade'  ||NL||NL||
'or:'                               ||NL||NL||
'  @3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App');
end;
/
