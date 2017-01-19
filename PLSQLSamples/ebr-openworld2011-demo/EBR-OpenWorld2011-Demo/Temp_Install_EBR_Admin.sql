@@Do_Kill_All_Foreground_Sessions
@@Cr_Generic_Helpers
@@Do_Drop_Users
@@Cr_EBR_Admin_Package
@@Cr_EBR_Admin_User
CONNECT EBR_Admin/p@11202
begin
  for j in 1..100 loop
    Sys.Create_Edition('E'||Ltrim(To_Char(j, '009')));
  end loop;
end;
/
