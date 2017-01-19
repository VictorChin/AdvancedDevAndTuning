CONNECT Sys/p AS SYSDBA
declare
  procedure Create_User(Who in varchar2) is
    User_Does_Not_Exist exception;
    pragma Exception_Init(User_Does_Not_Exist, -01918);
  begin
    begin
      execute immediate 'drop user '||Who||' cascade';
    exception when User_Does_Not_Exist then null; end;
    execute immediate '
      grant Create Session, Resource to '||Who||' identified by p';
  end Create_User; 
begin
  Create_User('Usr');
end;
/
grant Execute on DBMS_Hprof to Usr
/
