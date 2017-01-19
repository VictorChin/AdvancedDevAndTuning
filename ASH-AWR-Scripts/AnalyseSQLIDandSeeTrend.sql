select
 s.snap_id,
 to_char(s.begin_interval_time,'HH24:MI') c1,
 sql.executions_delta c2,
 sql.buffer_gets_delta c3,
 sql.disk_reads_delta c4,
 sql.iowait_delta c5,
sql.cpu_time_delta c6,
 sql.elapsed_time_delta c7
 from
 dba_hist_sqlstat sql,
 dba_hist_snapshot s
 where
 s.snap_id = sql.snap_id
 and s.begin_interval_time > sysdate -1
 and
sql.sql_id='&sqlid'
 order by c7
 /