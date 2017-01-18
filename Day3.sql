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