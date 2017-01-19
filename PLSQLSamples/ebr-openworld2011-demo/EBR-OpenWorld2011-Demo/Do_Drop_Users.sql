@@Connect_As_Sys

<<Silently_Drop_Users>>
declare
  procedure Drop_User(u in DBA_Users.Username%type) is
    User_Does_Not_Exist exception;
    pragma Exception_Init(User_Does_Not_Exist, -01918);
  begin
    execute immediate 'drop user '||u||' cascade';
  exception when User_Does_Not_Exist then null;
  end Drop_User;
begin
  Drop_User('EBR_Admin');
  Drop_User('Mini_HR_Owner');
  Drop_User('Mini_HR_API');
end Silently_Drop_Users;
/

EXECUTE x.p('OBE users dropped.')
