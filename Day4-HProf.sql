CONN sys/oracle@noncdb AS SYSDBA
Create user test identified by test;
GRANT EXECUTE ON dbms_hprof TO test;

CREATE OR REPLACE DIRECTORY profiler_dir AS 'c:\app';
GRANT READ, WRITE ON DIRECTORY profiler_dir TO test;

CONN test/test@noncdb
@?/rdbms/admin/dbmshptab.sql

SELECT table_name FROM user_tables;

SELECT sequence_name FROM user_sequences;

CREATE OR REPLACE PROCEDURE do_something_3 (p_times  IN  NUMBER) AS
  l_dummy  NUMBER;
BEGIN
  FOR i IN 1 .. p_times LOOP
    SELECT l_dummy + 1
    INTO   l_dummy
    FROM   dual;
  END LOOP;
END;
/

CREATE OR REPLACE PROCEDURE do_something_2 (p_times  IN  NUMBER) AS
BEGIN
  FOR i IN 1 .. p_times LOOP
    do_something_3(p_times => p_times);
  END LOOP;
END;
/

CREATE OR REPLACE PROCEDURE do_something_1 (p_times  IN  NUMBER) AS
BEGIN
  FOR i IN 1 .. p_times LOOP
    do_something_2(p_times => p_times);
  END LOOP;
END;
/

---------------------------------------------
BEGIN
  DBMS_HPROF.start_profiling (
    location => 'PROFILER_DIR',
    filename => 'profiler.txt');
   
  do_something_1(p_times => 10);

  DBMS_HPROF.stop_profiling;
END;
/
---------------------------------------------

SET SERVEROUTPUT ON
DECLARE
  l_runid  NUMBER;
BEGIN
  l_runid := DBMS_HPROF.analyze (
               location    => 'PROFILER_DIR',
               filename    => 'profiler.txt',
               run_comment => 'Test run.');
                    
  DBMS_OUTPUT.put_line('l_runid=' || l_runid);
END;
--l_runid=1
---

SET LINESIZE 500 PAGESIZE 1000
COLUMN name FORMAT A100

SELECT RPAD(' ', (level-1)*2, ' ') || a.name AS name,
       a.subtree_elapsed_time,
       a.function_elapsed_time,
       a.calls
FROM   (SELECT fi.symbolid,
               pci.parentsymid,
               RTRIM(fi.owner || '.' || fi.module || '.' || NULLIF(fi.function,fi.module), '.') AS name,
               NVL(pci.subtree_elapsed_time, fi.subtree_elapsed_time) AS subtree_elapsed_time,
               NVL(pci.function_elapsed_time, fi.function_elapsed_time) AS function_elapsed_time,
               NVL(pci.calls, fi.calls) AS calls
        FROM   dbmshp_function_info fi
               LEFT JOIN dbmshp_parent_child_info pci ON fi.runid = pci.runid AND fi.symbolid = pci.childsymid
        WHERE  fi.runid = 1
        AND    fi.module != 'DBMS_HPROF') a
CONNECT BY a.parentsymid = PRIOR a.symbolid
START WITH a.parentsymid IS NULL;
