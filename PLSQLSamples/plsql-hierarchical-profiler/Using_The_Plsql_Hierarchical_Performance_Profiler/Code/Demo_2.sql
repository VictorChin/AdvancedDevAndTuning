@@Cr_Usr.sql
drop directory Plshprof
/
create directory Plshprof as
 'C:\Bllewell\Work\OpenWorld_And_OUG_Events\2008_OOW_SF\Using_The_Plsql_Hierarchical_Performance_Profiler\Code\Trace\Demo_2'
/
grant write, read on directory Plshprof to Usr
/
CONNECT Usr/p

alter session set Plsql_Code_Type = interpreted
/
alter session set Plsql_Optimize_Level = 2
/
alter session set Plsql_Warnings = 'Enable:All'
/

alter session set Plsql_CCflags = 'Profiling:false, Manual_Inlining:true'
/

create function f1 return integer is
begin
  return 1;
end f1;
/
create function f2 return integer is
begin
  return 2;
end f2;
/
create function f3 return integer is
begin
  return 3;
end f3;
/
create function f4 return integer is
begin
  return 4;
end f4;
/
create function f5 return integer is
begin
  return 5;
end f5;
/

create procedure Main authid Current_User is
  n integer not null := 0;
  Expected_n integer not null := 543210;

  $if $$Manual_Inlining $then
    function f5 return integer is
    begin
      return 5;
    end f5;
  $end

begin
  for j in 1..10 loop
    n := n + f1();
  end loop;

  for j in 1..100 loop
    n := n + f2();
  end loop;

  for j in 1..1000 loop
    n := n + f3();
  end loop;

  for j in 1..10000 loop
    n := n + f4();
  end loop;

  for j in 1..100000 loop
    $if $$Manual_Inlining $then
      pragma Inline(f5, 'yes');
    $end
    n := n + f5();
  end loop;

  if n <> Expected_n then
    Raise_Application_Error(-20000, 'Bad n: '||n);
  end if;
end Main;
/
SHOW ERRORS


create procedure Harness authid Current_User is
  File constant varchar2(30) :=
    $if $$Manual_Inlining $then
      'Run_2.trc'
    $else
      'Run_1.trc'
    $end;

  Caption constant varchar2(35) :=
    Rpad('Elapsed time '||
    $if $$Profiling $then
      '(profiling ON)'
    $else
      '(profiling OFF)'
    $end
    , 35, '.');    
   
  t0 constant integer not null := DBMS_Utility.Get_Time();
  t integer not null := 0;
begin
  $if $$Profiling $then
    DBMS_Hprof.Start_Profiling('PLSHPROF', File);
  $end

  Main();
  
  $if $$Profiling $then
    DBMS_Hprof.Stop_Profiling();
  $end

  t := DBMS_Utility.Get_Time() - t0;
  DBMS_Output.Put_Line(Caption||Lpad(t, 5));
end;
/
SHOW ERRORS


alter procedure Harness compile
  Plsql_CCflags = 'Profiling:false, Manual_Inlining:true'
  reuse settings
/
begin Harness(); end;
/
alter procedure Harness compile
  Plsql_CCflags = 'Profiling:true, Manual_Inlining:true'
  reuse settings
/
begin Harness(); end;
/


/*

-- Manual_Inlining:false
-- Elapsed time (profiling OFF).......    6 .................. = 0.06 sec
-- Elapsed time (profiling ON)........  246 .................. = 2.46 sec
-- 497110 microsecs (elapsed time) & 111112 function calls.... = 0.497110 sec

-- Manual_Inlining:true
-- Elapsed time (profiling OFF).......    2 .................. = 0.02 sec
-- Elapsed time (profiling ON)........   33 .................. = 0.33 sec
-- 64384 microsecs (elapsed time) & 11112 function calls...... = 0.064384 sec


prompt .
plshprof -output Run_1 Run_1.trc
Run_1.html

plshprof -output Run_2 Run_2.trc
Run_2.html

plshprof -output Diff_1_2 Run_1.trc Run_2.trc
Diff_1_2.html

*/
