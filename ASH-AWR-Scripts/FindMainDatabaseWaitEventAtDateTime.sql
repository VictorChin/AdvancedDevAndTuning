--Find Snapshot
select snap_id,begin_interval_time,end_interval_time
from dba_hist_snapshot
where to_char(begin_interval_time,'DD-MON-YYYY')='14-NOV-2012'
and EXTRACT(HOUR FROM begin_interval_time) between 22 and 23;
-- Identify main database Wait events
select * from (
select active_session_history.event,
sum(active_session_history.wait_time +
active_session_history.time_waited) ttl_wait_time
from dba_hist_active_sess_history active_session_history
where event is not null
and SNAP_ID between &ssnapid and &esnapid
group by active_session_history.event
order by 2 desc)
where rownum