@@Cr_Usr.sql
drop directory Plshprof
/
create directory Plshprof as
 'C:\Bllewell\Work\OpenWorld_And_OUG_Events\2008_OOW_SF\Using_The_Plsql_Hierarchical_Performance_Profiler\Code\Trace\Demo_0'
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

create package Pkg authid Current_User is
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
alter session set Plsql_CCflags = 'Profiling:false'
/
create package body Pkg is
  Count_1 constant pls_integer not null :=   100000;
  Count_2 constant pls_integer not null :=   300000;
  Count_3 constant pls_integer not null :=   500000;
  Count_4 constant pls_integer not null :=   400000;
  Count_5 constant pls_integer not null :=   600000;

  Ans_1 constant integer not null :=        333338333350000;
  Ans_2 constant integer not null :=       9000045000050000;
  Ans_3 constant integer not null :=      41666791666750000;
  Ans_4 constant integer not null :=      21333413333400000;
  Ans_5 constant integer not null :=      72000180000100000;

  function Helper(i in pls_integer) return pls_integer is
  begin
    return i;
  end Helper;

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

  procedure p1 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_1, Ans_1);

    declare
      n number not null := 0;
      k pls_integer not null := 0;
    begin
      for j in (select o.Object_Name -- __sql_fetch_line41
                from All_Objects o
                where o.Object_Name like '%A%')
      loop
        k := k + 1;
        exit when k > 100;
        select Count(*) -- __static_sql_exec_line47
        into n
        from All_Objects o
        where o.Object_Name like Substr(j.Object_Name, 1, 1)||'%';
        n := n + 1;
      end loop;
      if n < 1 then raise Program_Error; end if;
    end;

  end p1;

  procedure p2 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Helper(Count_2), Ans_2);
  end p2;

  procedure p3 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Helper(Count_3), Ans_3);
  end p3;

  procedure p4 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Helper(Count_4), Ans_4);
  end p4;

  procedure p5 is
  begin
    pragma inline(Burn_Time, 'yes');
    Burn_Time(Count_5, Ans_5);
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
select Lpad(Line, 5)||' '||Text t
from User_Source
where Name = 'PKG'
and Type = 'PACKAGE BODY'
order by Line
/
SHOW ERRORS

create procedure Main authid Current_User is
begin
  Pkg.p1();
  Pkg.p2();
  Pkg.p3();
  Pkg.p4();
  Pkg.p5();
end Main;
/
SHOW ERRORS

create procedure Harness authid Current_User is
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
    DBMS_Hprof.Start_Profiling('PLSHPROF', 'Run_0.trc');
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
alter procedure Harness compile
  Plsql_CCflags = 'Profiling:true'
  reuse settings
/
begin Harness(); end;
/


/*

Elapsed time (profiling OFF)....... 1735 .................. = 17.35 sec
Elapsed time (profiling ON)........ 1736 .................. = 17.36 sec
17268854 microsecs (elapsed time) & 112 function calls..... = 17.268854 sec

Elapsed time (profiling OFF)....... 1661 .................. = 16.61 sec
Elapsed time (profiling ON)........ 1666 .................. = 16.66 sec
16619812 microsecs (elapsed time) & 112 function calls..... = 16.619812 sec

Elapsed time (profiling OFF)....... 1664 .................. = 16.64 sec
Elapsed time (profiling ON)........ 1667 .................. = 16.67 sec
16646902 microsecs (elapsed time) & 112 function calls..... = 16.646902 sec

prompt .
plshprof -output Run_0 Run_0.trc
Run_0.html

*/
