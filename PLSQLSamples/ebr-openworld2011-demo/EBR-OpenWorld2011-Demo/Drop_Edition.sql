  procedure Drop_Edition(e in e_Name_t) is
  begin
    declare
      Safe_e constant e_Name_t := Sys.DBMS_Assert.Simple_Sql_Name(e);
      Set_Unusable_Stmt constant varchar2(200) :=
        'alter edition '||Safe_e||' unusable';
      Drop_Stmt constant varchar2(200) :=
        'drop edition '||Safe_e||' cascade';
    begin
      -- alter edition x unusable removed after Beta2.
      $if $$Beta2 $then
        $if $$Tracing_Sql $then x.Show_Sql(Set_Unusable_Stmt); $end
        begin
          for j in 1..5 loop
            begin
              execute immediate Set_Unusable_Stmt;
              exit;
            exception when Edition_Is_In_Use then
              Sys.DBMS_Lock.Sleep(5);
            end;
          end loop;
        exception
          when Edition_Does_Not_Exist then null;
        end;
      $end

      begin
        $if $$Tracing_Sql $then x.Show_Sql(Drop_Stmt); $end
        -- Occasionally, we get this error:
        -- "deadlock detected while trying to lock object MINI_HR_OWNER.employees"
        -- This seems to be unavoidable. But it's untimately harmless.
        -- So try up to five times with 5 second sleep.
        -- Similarly "edition is in use" can occasionally occur after killing sessions
        -- that were using to-be-dropped 'cos locks aren't imnmediately released.
        for j in 1..5 loop
          begin
            execute immediate Drop_Stmt;
            exit;
          exception when Deadlock_Detected or Edition_Is_In_Use then
            Sys.DBMS_Lock.Sleep(5);
          end;
        end loop;
      exception
        when Edition_Does_Not_Exist then null;
      end;
    end;
  exception when Invalid_Sql_Name then
    Raise_Application_Error(-20001,
      'Drop_Edition: "'||e||'": only common identifiers are supported.');
  end Drop_Edition;
