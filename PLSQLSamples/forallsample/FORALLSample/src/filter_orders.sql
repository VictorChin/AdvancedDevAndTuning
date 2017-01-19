/** 
 *  @author  : Shrinivas Bhat Padamar
 *  @version : 1.0 
 * 
 *  Name of the Application         :  filter_orders.sql
 *  Creation/Modification History   :  15-Dec-2004
 * 
 *  Overview of  Package/Sample     :	This block of PL/SQL code uses the latest features of FORALL
 * 					statement. 
 *  
 **/

SET SERVEROUTPUT ON

DECLARE 
 -- This nested table is used to hold the data from the ALL_ORDERS table 
 TYPE orders_type IS TABLE OF all_orders%ROWTYPE;
 

 -- This nested table holds the indexes of the order records which need to be archived
 TYPE orders_index_type IS TABLE OF PLS_INTEGER INDEX BY PLS_INTEGER ;
 
 -- Declare nested table variables 
 orders_archive orders_type;
 new_order orders_type;
 all_order orders_type;
 orders_archive_index orders_index_type ;
  
 -- Declare INTEGER variables

 order_status INTEGER;
 new_orders_count INTEGER := 0;
 old_orders_count INTEGER := 0;
 	
BEGIN 

-- Bulk fetch the data from the ALL_ORDERS table 
SELECT * BULK COLLECT INTO all_order FROM  all_orders;
  -- Assign the records to the variables
  new_order := all_order;
  
  -- Loop through the records 
  FOR i IN all_order.FIRST .. all_order.LAST LOOP 
    order_status := all_order(i).order_status ;
    -- Delete those records which are not new. Status code '1' means orders just 'Entered'
    IF ( order_status != 1  ) THEN 
      new_order.DELETE(i);  
    ELSE 
      -- Count the number of new records
      new_orders_count := new_orders_count+1;
    END IF;

    -- Filter the records which are old and have been processed
    IF ( all_order(i).order_date < TO_DATE('01-JAN-2000','DD-MON-YYYY') AND (order_status = 2 OR order_status = 3 OR order_status = 10 ) )  THEN 
      -- Add the index of the current record into the collection
      orders_archive_index(old_orders_count) := i;
      old_orders_count := old_orders_count+1;
    END IF;
    
  END LOOP;  

  DBMS_OUTPUT.PUT_LINE('Inserting '|| TO_CHAR(new_orders_count)  || ' new ORDERS into NEW_ORDERS table');
  DBMS_OUTPUT.PUT_LINE(' ');
  
  -- Insert the data from the collection into the database
  FORALL indx IN INDICES OF new_order 
    INSERT INTO new_orders VALUES all_order(indx);

  DBMS_OUTPUT.PUT_LINE('Inserting ' ||TO_CHAR(old_orders_count) ||' old ORDERS data into ORDERS_ARCHIVE table');
  -- Insert the data into ORDERS_ARCHIVES table
  FORALL indx IN VALUES OF orders_archive_index 
    INSERT INTO orders_archive VALUES all_order(indx);
  
  commit;
END;
/