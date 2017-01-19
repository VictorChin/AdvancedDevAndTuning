@@c
WHENEVER SQLERROR EXIT
SPOOL ../Spool_Files/4_EBR1_Task__Retire_Pre_Upgrade_Edition

@@Connect_As_EBR_Admin

-- The default edition may already be Post_Upgrade because
-- 3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App sets this.
-- But maybe 3_EBR1_Task__Use_Post_Upgrade_Mini_HR_App was not executed.

<<Kill_All_Pre_Upgrade_Sessions>>
begin
  OBE_Helper.Drop_Random_Updates_Job('Pre_Upgrade');
  declare
    Retiree_Is_Default exception; pragma Exception_Init(Retiree_Is_Default, -20004);
  begin
    Sys.Retire_Edition('Pre_Upgrade');
  exception when Retiree_Is_Default then
    Sys.Set_Default_Edition('Post_Upgrade');
    Sys.Retire_Edition('Pre_Upgrade');
  end;
  Sys.Kill_All_Sessions_Using_Edn('Pre_Upgrade');
end Kill_All_Pre_Upgrade_Sessions;
/
EXECUTE x.p('Pre_Upgrade retired. All Pre_Upgrade sessions killed.')

@@Do_Clean_Up_After_Pre_Upgrade_Edition

@@Qry_DBA_Objects_AE

begin x.Show_State('Pre_Upgrade is now fully retired.

We''re back to the "ground-state":
There''s once again just one non-retired edition.'); end;
/
begin x.p(
'Next... begin again with @0a_Prep_Task__Install_Pre_11gR2_Mini_HR_App
        or do the final, and irrevocable, @5_EBR2_Task__Null_Upgrade'); end;
/

SPOOL OFF
WHENEVER SQLERROR CONTINUE NONE
