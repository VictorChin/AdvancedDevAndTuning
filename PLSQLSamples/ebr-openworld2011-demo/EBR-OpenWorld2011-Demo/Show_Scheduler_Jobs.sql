CLEAR SCREEN

-- Attempted workaround for weird SQL*Plus formatting bug
-- 36 OK; 37 bad.
begin
  DBMS_Output.Put_Line(
    Rpad(I_Cap('Owner'),      15, ' ')||' '||
    Rpad(I_Cap('Job_Name'),   31, ' ')||' '||
    Rpad(I_Cap('Job_Type'),   17, ' ')||' '||
    Rpad(I_Cap('Job_Action'), 36, ' ')||' '||
    Rpad(I_Cap('State'),      10, ' '));      
  DBMS_Output.Put_Line(
    Rpad(I_Cap('-'),          15, '-')||' '||
    Rpad(I_Cap('-'),          31, '-')||' '||
    Rpad(I_Cap('-'),          17, '-')||' '||
    Rpad(I_Cap('-'),          36, '-')||' '||
    Rpad(I_Cap('-'),          10, '-'));      

  for j in (
    select
      Rpad(I_Cap(Owner),      15, ' ')  Owner,
      Rpad(I_Cap(Job_Name),   31, ' ')  Job_Name,
      Rpad(I_Cap(Job_Type),   17, ' ')  Job_Type,
      Rpad(I_Cap(Job_Action), 36, ' ')  Job_Action,
      Rpad(I_Cap(State),      10, ' ')  State
    from DBA_Scheduler_Jobs
    where Owner in ('OBE_HELPER', 'MINI_HR_OWNER')
    order by Owner desc, Job_Name asc)
  loop
    DBMS_Output.Put_Line(
      j.Owner      ||' '||
      j.Job_Name   ||' '||
      j.Job_Type   ||' '||
      j.Job_Action ||' '||
      j.State);
  end loop;
end;
/
with v as (
  select
    Count(*) n,
    Task_Owner,
    Task_Name,
    Status,

    case Lower(Status)
      when 'unassigned' then 1
      when 'assigned'   then 2
      when 'processed'  then 3
      else                  99
    end                             x
  from DBA_Parallel_Execute_Chunks
  group by Task_Owner, Task_Name, Status)

select 
  n,
  I_Cap(Task_Owner)               "Task_Owner",
  I_Cap(Task_Name)                "Task_Name",
  I_Cap(Status)                   "Status"
from v
order by Task_Owner, Task_Name, x
/

<<Sleep_2>> begin Sleep(2); end;
/
