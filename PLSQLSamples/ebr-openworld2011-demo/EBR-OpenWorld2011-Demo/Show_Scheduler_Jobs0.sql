CLEAR SCREEN

select
  I_Cap(Owner)                    "Owner",
  I_Cap(Job_Name)                 "Job_Name",
  I_Cap(Job_Type)                 "Job_Type",
  I_Cap(Job_Action)               "Job_Action",
  I_Cap(State)                    "State"
from DBA_Scheduler_Jobs
where Owner in ('OBE_HELPER', 'MINI_HR_OWNER')
order by Owner, Job_Name desc
/
select
  Count(*) n,
  I_Cap(Task_Owner)               "Task_Owner",
  I_Cap(Task_Name)                "Task_Name",
  I_Cap(Status)                   "Status"
from DBA_Parallel_Execute_Chunks
group by Task_Owner, Task_Name, Status
order by Task_Owner, Task_Name, Status
/

<<Sleep_2>> begin Sleep(2); end;
/
