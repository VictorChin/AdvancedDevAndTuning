@@Cr_Usr.sql
drop directory Plshprof
/
create directory Plshprof as
 'C:\Bllewell\Work\OpenWorld_And_OUG_Events\2008_OOW_SF\Using_The_Plsql_Hierarchical_Performance_Profiler\Code\Trace\Callers_And_Callees'
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
  procedure Caller_1;
  procedure Caller_2;
  procedure Caller_3;
  procedure Callee_1;
  procedure Callee_2;
  procedure Callee_3;
end Pkg;
/

-- PLW-06004: inlining of call of procedure 'BURN_TIME' requested
-- PLW-06005: inlining of call of procedure 'BURN_TIME' was done
alter session set Plsql_Warnings = 'Enable:All, Disable:06004, Disable:06005'
/
alter session set Plsql_CCflags = 'Profiling:false'
/
create package body Pkg is
  Count_1 constant pls_integer not null :=   100;
  Count_2 constant pls_integer not null :=   300;
  Count_3 constant pls_integer not null := 30000;
  Count_4 constant pls_integer not null :=  3000;
  Count_5 constant pls_integer not null :=  9000;
  Count_6 constant pls_integer not null := 10000;

  Ans_1 constant integer not null :=        338350;
  Ans_2 constant integer not null :=       9045050;
  Ans_3 constant integer not null := 9000450005000;
  Ans_4 constant integer not null :=    9004500500;
  Ans_5 constant integer not null :=  243040501500;
  Ans_6 constant integer not null :=  333383335000;

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

  procedure Some_Subprogram(Caller in pls_integer) is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_6, Ans_6);
    case Caller
      when 1 then
        for j in 1..5 loop
          Callee_1();
        end loop;
        for j in 1..10 loop
          Callee_2();
        end loop;
      when 2 then
        for j in 1..15 loop
          Callee_2();
        end loop;
        for j in 1..7 loop
          Callee_3();
        end loop;
      when 3 then
        for j in 1..20 loop
          Callee_1();
        end loop;
        for j in 1..25 loop
          Callee_3();
        end loop;
    end case;
  end Some_Subprogram;

  procedure Caller_1 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_1, Ans_1);
    for j in 1..7 loop
      Some_Subprogram(1);
    end loop;
  end Caller_1;

  procedure Caller_2 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_2, Ans_2);

    for j in 1..13 loop
      Some_Subprogram(2);
    end loop;
  end Caller_2;

  procedure Caller_3 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_3, Ans_3);
    for j in 1..17 loop
      Some_Subprogram(3);
    end loop;
  end Caller_3;

  procedure Callee_1 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_4, Ans_4);
  end Callee_1;

  procedure Callee_2 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_5, Ans_5);
  end Callee_2;

  procedure Callee_3 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_5, Ans_5);
  end Callee_3;

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
  Pkg.Caller_1();

  for j in 1..7 loop
    Pkg.Caller_2();
  end loop;

  for j in 1..19 loop
    Pkg.Caller_3();
  end loop;

  for j in 1..23 loop
    Pkg.Callee_1();
  end loop;

  for j in 1..29 loop
    Pkg.Callee_2();
  end loop;

  for j in 1..37 loop
    Pkg.Callee_3();
  end loop;
end Main;
/
SHOW ERRORS

create procedure Harness authid Definer is

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
    DBMS_Hprof.Start_Profiling('PLSHPROF', 'Run_1.trc');
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
  Plsql_CCflags = 'Profiling:false'
  reuse settings
/
begin Harness(); end;
/

--/*
alter procedure Harness compile
  Plsql_CCflags = 'Profiling:true'
  reuse settings
/
begin Harness(); end;
/
--*/

/*

-- Run_1 baseline

Elapsed time (profiling OFF)....... 4320 .................. = 43.20 sec
Elapsed time (profiling ON)........ 4316 .................. = 43.16 sec

42926513 microsecs (elapsed time) & 17180 function calls... = 42.926513 sec

prompt .
plshprof -output Run_1 Run_1.trc
Run_1.html

*/
