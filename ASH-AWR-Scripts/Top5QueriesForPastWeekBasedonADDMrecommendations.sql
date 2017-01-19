/*
Top 10 SQL_ID's for the last 7 days as identified by ADDM
from DBA_ADVISOR_RECOMMENDATIONS and dba_advisor_log
*/

col SQL_ID form a16
col Benefit form 9999999999999
select * from (
select b.ATTR1 as SQL_ID, max(a.BENEFIT) as "Benefit" 
from DBA_ADVISOR_RECOMMENDATIONS a, DBA_ADVISOR_OBJECTS b 
where a.REC_ID = b.OBJECT_ID
and a.TASK_ID = b.TASK_ID
and a.TASK_ID in (select distinct b.task_id
from dba_hist_snapshot a, dba_advisor_tasks b, dba_advisor_log l
where a.begin_interval_time > sysdate - 7 
and  a.dbid = (select dbid from v$database) 
and a.INSTANCE_NUMBER = (select INSTANCE_NUMBER from v$instance) 
and to_char(a.begin_interval_time, 'yyyymmddHH24') = to_char(b.created, 'yyyymmddHH24') 
and b.advisor_name = 'ADDM' 
and b.task_id = l.task_id 
and l.status = 'COMPLETED') 
and length(b.ATTR4) > 1 group by b.ATTR1
order by max(a.BENEFIT) desc) where rownum < 6;