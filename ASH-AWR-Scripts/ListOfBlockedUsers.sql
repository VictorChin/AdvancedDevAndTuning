col username format a12
col sid format 9999
col state format a15
col event format a50
col wait_time format 99999999
set pagesize 100
set linesize 120

select s.sid, s.username, se.event, se.state, se.wait_time
from v$session s, v$session_wait se
where s.sid=se.sid
and se.event not like 'SQL*Net%'
and se.event not like '%rdbms%'
and s.username is not null
order by se.wait_time;