-- This anon. block uses a custom version of InitCap, Sys.I_Cap.
-- The very first time this OBE is run, then Sys.I_Cap won't exist
-- when the block runs. The block gives an informative mesage
-- and then creates Sys.I_Cap using "execute immediate".
--
-- This code is used mainly because it illustrates an interesting use
-- of dynamic SQL.
--
-- Because it's called only as an anon. block, the distinction between
-- the "current" notions and the "session" notions doesn't matter.

<<Show_Current_User>>
declare
  Create_I_Cap constant varchar2(32767) := q'[

    create or replace function Sys.I_Cap(i in varchar2)
      return varchar2
      authid Definer deterministic
    is
    begin
      if i is null then
        return null;
      end if;
      if i like ' ' then
        Raise_Application_Error(-20000, 'I_Cap: i/p constains space(s)');
      end if;

      declare
        s1 constant varchar2(32767) := Replace(i, '_', ' ');
        s2 constant varchar2(32767) := InitCap(s1);
        s3 constant varchar2(32767) := Replace(s2, ' ', '_');
        s4 constant varchar2(32767) := Replace(s3, 'Dbms_', 'DBMS_');
        s5 constant varchar2(32767) := Replace(s4, 'Ebr_',  'EBR_');
        s6 constant varchar2(32767) := Replace(s5, '_Hr',  '_HR');
        s7 constant varchar2(32767) := Replace(s6, '_Api',  '_API');
        s8 constant varchar2(32767) := Replace(s7, 'Obe_',  'OBE_');
      begin
        return s8;
      end;
    end I_Cap;

  ]';

  Create_u constant varchar2(32767) := q'[

    create or replace function Sys.u return varchar2 authid Current_User is
      u constant All_Users.Username%type :=
        Sys.I_Cap(Sys_Context('Userenv', 'Current_User'));
      e constant All_Editions.Edition_Name%type :=
        Sys.I_Cap(Sys_Context('Userenv', 'Current_Edition_Name'));
    begin
      return u||' using '||e;
    end u;

  ]';

  Stmt constant varchar2(200) :=
    'begin DBMS_Output.Put_Line(''         ... as ''||Sys.u); end;';

  ORA_06550 exception; pragma Exception_Init(ORA_06550, -06550);
begin
  begin
    execute immediate Stmt;
  exception when ORA_06550 then
    if Dbms_Utility.Format_Error_Stack like
      '%identifier ''SYS.U'' must be declared%'
    then
      -- Bootstrap.
      execute immediate Create_I_Cap;
      execute immediate 'grant execute on Sys.I_Cap to public';
      execute immediate 'create or replace public synonym I_Cap for Sys.I_Cap';

      execute immediate Create_u;
      execute immediate 'grant execute on Sys.u to public';
      execute immediate 'create or replace public synonym u for Sys.u';

      execute immediate Stmt;
    else
      raise;
    end if;
  end;
end Show_Current_User;
/
