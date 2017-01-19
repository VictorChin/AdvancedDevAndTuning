select 
  count(SQL_ID) 
, PLAN_HASH_VALUE 
, sum(EXECUTIONS_DELTA) EXECUTIONS
, sum(ROWS_PROCESSED_DELTA) CROWS
, trunc(sum(CPU_TIME_DELTA)/1000000/60) CPU_MINS
, trunc(sum(ELAPSED_TIME_DELTA)/1000000/60)  ELA_MINS
from DBA_HIST_SQLSTAT 
group by  PLAN_HASH_VALUE
order by 1 DESC, CPU_MINS;

-- find the SQL Text that has large reparse.
Select A.sql_id,B.sql_text from 
DBA_HIST_SQLSTAT A join v$sqltext B ON A.SQL_ID = B.sql_ID where plan_hash_value=
2939684812
Group by A.sql_id,B.sql_text,B.Piece
Order By sql_id,B.Piece;