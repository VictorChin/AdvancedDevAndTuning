CREATE OR REPLACE PACKAGE BODY show_details AS 
  PROCEDURE get_order(p_orderid IN NUMBER, p_cv_order IN OUT rt_order) IS
    BEGIN
      OPEN p_cv_order FOR SELECT * FROM orders
      WHERE order_id = p_orderid;
      -- CLOSE p_cv_order 
    END get_order;
  PROCEDURE get_cust(p_custid IN NUMBER, p_cv_cust IN OUT rt_cust)
  IS
    BEGIN 
      OPEN p_cv_cust FOR 
      SELECT customer_id, cust_first_name, phone_numbers, credit_limit,
             cust_email 
      FROM customers WHERE customer_id = p_custid;
      -- CLOSE p_cv_cust 
    END get_cust; 
END;
