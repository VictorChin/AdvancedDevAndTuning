@@Connect_As_EBR_Admin

<<Cr_Post_Upgrade_Edition>>
declare
  Post_Upgrade constant All_Editions.Edition_Name%type := 'Post_Upgrade';
begin
  Sys.Create_Edition(Post_Upgrade);
  Sys.Grant_Use_On_Edition(Post_Upgrade, 'Mini_HR_Owner');

  -- In real life, we wouldn't let Mini_HR_API use the new edition yet.
  -- But, for this OBE, we want to see what's happening as the EBR exercise progresses.
  Sys.Grant_Use_On_Edition(Post_Upgrade, 'Mini_HR_API');
end Cr_Post_Upgrade_Edition;
/

begin x.p_('Post_Upgrade edition created.
Use on Post_Upgrade granted to Mini_HR_Owner
and Mini_HR_API (but not to public).'); end;
/
@@p
