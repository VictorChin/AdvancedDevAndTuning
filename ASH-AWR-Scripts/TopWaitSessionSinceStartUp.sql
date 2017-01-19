col event format a60

select event, total_waits, time_waited
from v$system_event e, v$event_name n
where n.event_id = e.event_id
and n.wait_class !='Idle'
and n.wait_class = (select wait_class from v$session_wait_class
 where wait_class !='Idle'
 group by wait_class having
sum(time_waited) = (select max(sum(time_waited)) from v$session_wait_class
where wait_class !='Idle'
group by (wait_class)))
order by 3;