col segment_name format a20
col owner format a10 
select segment_name,object_type,total_physical_reads
 from ( select owner||'.'||object_name as segment_name,object_type,
value as total_physical_reads
from v$segment_statistics
 where statistic_name in ('physical reads')
 order by total_physical_reads desc)
 where rownum <5;