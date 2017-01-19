declare
  s constant boolean := x.Show_Sql_On();
  Msg constant varchar2(80) := 
  case s
    when true then
'Show SQL is ON.
To turn it off... EXECUTE x.Turn_Off_Show_Sql()'
    else
'Show SQL is OFF.
To turn it on... EXECUTE x.Turn_On_Show_Sql()'
  end;
begin
  x.p(Msg);
end;
/
