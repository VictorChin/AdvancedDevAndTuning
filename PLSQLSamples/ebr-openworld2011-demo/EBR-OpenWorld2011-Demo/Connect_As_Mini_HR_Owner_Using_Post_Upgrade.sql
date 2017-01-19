CONNECT Mini_HR_Owner/p@11202 edition=Post_Upgrade
@@My_Glogin
declare
  Current_Edition constant All_Editions.Edition_Name%type :=
    Sys_Context('Userenv', 'Current_Edition_Name');
begin
  if Current_Edition <> 'POST_UPGRADE' then
    Raise_Application_Error(-20000,
      'Logic error from Connect_As_Mini_HR_Owner_Using_Post_Upgrade');
  end if;
end;
/
