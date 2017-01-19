-- Useful SQL*PLus settings. Normally done in glogin

SET SQLPROMPT "  |  "
SET BLOCKTERMINATOR ON
SET SQLBLANKLINES ON
SET SQLTERMINATOR OFF

SET TRIMSPOOL ON
SET ECHO OFF
SET FEEDBACK OFF
SET DOC OFF
SET VERIFY OFF
SET PAGESIZE 50000
SET LINESIZE 32767
SET SERVEROUTPUT ON FORMAT WRAPPED SIZE UNLIMITED

COLUMN Username FORMAT A30
COLUMN Object_Name FORMAT A30
COLUMN Object_Type FORMAT A18
COLUMN Name FORMAT A30
COLUMN Type FORMAT A18
COLUMN Edition_Name FORMAT A20
COLUMN Parent_Edition_Name Format A20
COLUMN Usable FORMAT A6

-- Used for the SHOW ERRORS command
COLUMN LINE/COL FORMAT A8
COLUMN ERROR    FORMAT A65  WORD_WRAPPED

--------------------------------------------------------------------------------
-- For this demo specifically.
COLUMN u FORMAT A50

-- Standardize on NLS_Date_Format in all sessions.
alter session set NLS_Date_Format = 'dd-Mon-yyyy'
/
-- Standardize on PL/SQL compiler flags
alter session set Plsql_Warnings = 'Enable:All'
/
alter session set Plsql_Code_Type = Interpreted
/
alter session set Plsql_Optimize_Level = 3
/
alter session set Plsql_CCflags = ''
/
@@Session_Trace_Enable
@@Show_Current_User
