col EVENT format a60 

select * from (
select active_session_history.event,
sum(active_session_history.wait_time +
active_session_history.time_waited) ttl_wait_time
from v$active_session_history active_session_history
where active_session_history.event is not null
group by active_session_history.event
order by 2 desc)
where rownum < 6
/