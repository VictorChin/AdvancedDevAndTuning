CREATE TYPE typ_item AS OBJECT --create object 
(prodid NUMBER(5), price NUMBER(7,2) );
/
CREATE TYPE typ_item_nst -- define nested table type 
AS TABLE OF typ_item;
/
CREATE TABLE pOrder ( -- create database table 
ordid NUMBER(5), supplier NUMBER(5),
requester NUMBER(4),
ordered DATE, items typ_item_nst)
NESTED TABLE items STORE AS item_stor_tab;
/
INSERT INTO pOrder
(ordid, supplier, requester, ordered, items) 
VALUES (1000, 12345, 9876, SYSDATE, typ_item_nst(typ_item(99, 129.00)));
END;
/
INSERT INTO pOrder
(ordid, supplier, requester, ordered, items) 
VALUES (1000, 12345, 9876, SYSDATE, null); -- Once the nested table is set to null, use the update 
-- update statement 
UPDATE pOrder SET items = typ_item_nst(typ_item(99, 129.00)) WHERE ordid = 1000;
END; /