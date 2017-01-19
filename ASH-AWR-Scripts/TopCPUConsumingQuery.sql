select * from (
select 
	SQL_ID, 
	sum(CPU_TIME_DELTA), 
	sum(DISK_READS_DELTA),
	count(*)
from 
	DBA_HIST_SQLSTAT a, dba_hist_snapshot s
where
 s.snap_id = a.snap_id
 and s.begin_interval_time > sysdate -1
	group by 
	SQL_ID
order by 
	sum(CPU_TIME_DELTA) desc)
where rownum