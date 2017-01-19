@@Cr_Usr.sql
drop directory Plshprof
/
create directory Plshprof as
 'C:\Bllewell\Work\OpenWorld_And_OUG_Events\2008_OOW_SF\Using_The_Plsql_Hierarchical_Performance_Profiler\Code\Trace\Demo_3'
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

create package Pkg authid Definer is
  procedure p0;
  procedure p1;
  procedure p2;
  procedure p3;
  procedure p4;
  procedure p5;
end Pkg;
/

-- PLW-06004: inlining of call of procedure 'BURN_TIME' requested
-- PLW-06005: inlining of call of procedure 'BURN_TIME' was done
alter session set Plsql_Warnings = 'Enable:All, Disable:06004, Disable:06005'
/
alter session set Plsql_CCflags = 'Profiling:false, Tracing:true'
/
create package body Pkg is
  Count_1 constant pls_integer not null :=   100000;
  Count_2 constant pls_integer not null :=   300000;
  Count_3 constant pls_integer not null := 10000000;
  Count_4 constant pls_integer not null :=  3000000;
  Count_5 constant pls_integer not null :=  9000000;

  Ans_1 constant integer not null :=        333338333350000;
  Ans_2 constant integer not null :=       9000045000050000;
  Ans_3 constant integer not null :=  333333383333335000000;
  Ans_4 constant integer not null :=    9000004500000500000;
  Ans_5 constant integer not null :=  243000040500001500000;

  procedure Burn_Time(Loop_Count in pls_integer, Ans in integer) is
    n integer not null := 0;
    m integer not null := 0;
  begin
    for j in 1..Loop_Count loop
      m := j;
      n := n + m*m;
    end loop;
    if n <> Ans then
      Raise_Application_Error(-20000, 'Loop_Count: '||Loop_Count||'. Bad n: '||n);
    end if;
  end Burn_Time;

  function Helper(i in pls_integer, Trace in boolean := false) return pls_integer is
  begin
    if Trace then
      declare
        n integer not null := 0;
        m integer not null := 0;
      begin
        for j in 1..30000000 loop
          m := j;
          n := n + m*m;
        end loop;
        if n <> 9000000450000005000000 then
          Raise_Application_Error(-20000, 'Helper. Bad n: '||n);
        end if;
      end;
    end if;
    return i;
  end Helper;

  procedure p1 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Helper(Count_1), Ans_1);
  end p1;

  procedure p2 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Helper(Count_2), Ans_2);
  end p2;

  procedure p3 is
  begin

    $if $$Tracing $then
      pragma inline(Burn_Time, 'yes');
      Burn_Time(Helper(Count_3, Trace=>true), Ans_3);
    $else
      pragma inline(Burn_Time, 'yes');
      Burn_Time(Helper(Count_3), Ans_3);
    $end

  end p3;

  procedure p4 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Helper(Count_4), Ans_4);
  end p4;

  procedure p5 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Helper(Count_5), Ans_5);
  end p5;

  -- The purpose of p0 is simply to bulk up the code volume to supress this problem:
  -- PLW-05012: pragma INLINE for procedure 'BURN_TIME' could not be applied

  procedure p0 is
    n00 number;
    n01 number;
    n02 number;
    n03 number;
    n04 number;
    n05 number;
    n06 number;
    n07 number;
    n08 number;
    n09 number;
    n10 number;
    n11 number;
    n12 number;
    n13 number;
    n14 number;
    n15 number;
    n16 number;
    n17 number;
    n18 number;
    n19 number;
  begin
    n00 := 1;
    n01 := n00 * 2;
    n02 := n00 * 3;
    n03 := n00 * 4;
    n04 := n00 * 5;
    n05 := n00 * 6;
    n06 := n00 * 7;
    n07 := n00 * 8;
    n08 := n00 * 9;
    n09 := n00 * 10;
    n10 := n00 * 11;
    n11 := n00 * 12;
    n12 := n00 * 13;
    n13 := n00 * 14;
    n14 := n00 * 15;
    n15 := n00 * 16;
    n16 := n00 * 17;
    n17 := n00 * 18;
    n18 := n00 * 19;
    n19 := n00 * 20;
    DBMS_Output.Put_Line(
      n00 + 
      n01 + 
      n02 + 
      n03 + 
      n04 + 
      n05 + 
      n06 + 
      n07 + 
      n08 + 
      n09 + 
      n10 + 
      n11 + 
      n12 + 
      n13 + 
      n14 + 
      n15 + 
      n16 + 
      n17 + 
      n18 + 
      n19  );
  end p0;
end Pkg;
/
SHOW ERRORS

create procedure Main authid Definer is
begin
  Pkg.p1();
  Pkg.p2();
  Pkg.p3();
  Pkg.p4();
  Pkg.p5();
end Main;
/
SHOW ERRORS

create procedure Harness authid Definer is
  File constant varchar2(30) :=
    $if $$Tracing $then
      'Run_1.trc'
    $else
      'Run_2.trc'
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


alter package Pkg compile body
  Plsql_CCflags = 'Tracing:true'
  reuse settings
/
SHOW ERRORS

alter procedure Harness compile
  Plsql_CCflags = 'Profiling:false, Tracing:true'
  reuse settings
/
begin Harness(); end;
/
alter procedure Harness compile
  Plsql_CCflags = 'Profiling:true, Tracing:true'
  reuse settings
/
begin Harness(); end;
/


/*

-- Tracing:true
-- Elapsed time (profiling OFF)....... 2372 .................. = 23.72 sec
-- Elapsed time (profiling ON)........ 2389 .................. = 23.89 sec
-- 23846392 microsecs (elapsed time) & 12 function calls...... = 23.846392 sec

-- Tracing:false
-- Elapsed time (profiling OFF)....... 1025 .................. = 10.25 sec
-- Elapsed time (profiling ON)........ 1023 .................. = 10.23 sec
-- 10200726 microsecs (elapsed time) & 12 function calls...... = 10.200726 sec

prompt .
plshprof -output Run_1 Run_1.trc
Run_1.html

plshprof -output Run_2 Run_2.trc
Run_2.html


plshprof -output Diff_1_2 Run_1.trc Run_2.trc
Diff_1_2.html

*/
