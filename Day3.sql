-- PLSQL Cursor Review
SET SERVEROUTPUT ON 
BEGIN
UPDATE orders SET order_status = order_status;
FOR v_rec IN ( SELECT order_id FROM orders ) LOOP
IF SQL%ISOPEN THEN
    DBMS_OUTPUT.PUT_LINE('TRUE – ' || SQL%ROWCOUNT);
ELSE
    DBMS_OUTPUT.PUT_LINE('FALSE – ' || SQL%ROWCOUNT); END IF; END LOOP;
END;
/
-- Update Cursor
DECLARE 
    CURSOR cur_update IS SELECT * FROM customers WHERE credit_limit < 5000 FOR UPDATE;
BEGIN
FOR v_rec IN cur_update
  LOOP
       UPDATE customers SET credit_limit = credit_limit + 200 
       WHERE customer_id = v_rec.customer_id;
   END LOOP;
END;
/
-- Proper used of Update Cursor
DECLARE
CURSOR cur_update
IS SELECT * FROM customers WHERE credit_limit < 5000 FOR UPDATE;
BEGIN
  FOR v_rec IN cur_update LOOP
    UPDATE customers
    SET credit_limit = credit_limit + 200 WHERE CURRENT OF cur_update; 
  END LOOP;
END; /


BEGIN
   FOR employee_rec IN (
        SELECT *
          FROM HR.employees
         WHERE department_id = 20)
   LOOP
      DBMS_OUTPUT.put_line (
         employee_rec.last_name);
   END LOOP;
END;
-- run below as sys-noncdb
grant debug connect session to hr;
grant debug any procedure to hr;
	
CREATE OR REPLACE PROCEDURE ENABLE_DEBUGGING(ByUserName varchar)
IS 
   ip_address VARCHAR2(40);
BEGIN
  ip_address := SYS_CONTEXT( 'userenv', 'ip_address' );
  DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE
       (HOST=>ip_address,
        ace=> SYS.XS$ACE_TYPE(privilege_list=>sys.XS$NAME_LIST('JDWP') ,
                           principal_name=>ByUserName ,
                           principal_type=>sys.XS_ACL.PTYPE_DB) );
     DBMS_OUTPUT.PUT_LINE( 'Added Java debugging privilege for user: ' || ByUserName );
     DBMS_OUTPUT.PUT_LINE( 'At IP address: ' || ip_address );
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE( 'ENABLE_DEBUGGING: An unknown exception has occurred.' );
      RAISE;
END;  

EXECUTE ENABLE_DEBUGGING('HR');

alter user OE identified by oracle account unlock;
grant dba to OE;