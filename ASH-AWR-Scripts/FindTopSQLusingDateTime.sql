-- find snapshot id
select snap_id,begin_interval_time,end_interval_time
from dba_hist_snapshot
where to_char(begin_interval_time,'DD-MON-YYYY')='14-NOV-2012'
and EXTRACT(HOUR FROM begin_interval_time) between 22 and 23;
-- Lookup Top SQL
select * from
 (
select
 sql.sql_id c1,
sql.buffer_gets_delta c2,
sql.disk_reads_delta c3,
sql.iowait_delta c4
 from
dba_hist_sqlstat sql,
dba_hist_snapshot s
 where
 s.snap_id = sql.snap_id
and
 s.snap_id= &snapid
 order by
 c3 desc)
 where rownum < 6 
/