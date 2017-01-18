CREATE OR REPLACE TYPE person_typ AS OBJECT (
  idno           NUMBER,
  first_name     VARCHAR2(20),
  last_name      VARCHAR2(25),
  email          VARCHAR2(25),
  phone          VARCHAR2(20),
  MAP MEMBER FUNCTION get_idno RETURN NUMBER, 
  MEMBER PROCEDURE display_details ( SELF IN OUT NOCOPY person_typ ),
  MEMBER Function get_details ( SELF IN OUT NOCOPY person_typ ) RETURN VARCHAR);
/

CREATE OR REPLACE TYPE BODY person_typ AS
  MAP MEMBER FUNCTION get_idno RETURN NUMBER IS
  BEGIN
    RETURN idno;
  END;
  MEMBER PROCEDURE display_details ( SELF IN OUT NOCOPY person_typ ) IS
  BEGIN
    -- use the PUT_LINE procedure of the DBMS_OUTPUT package to display details
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(idno) || ' ' || first_name || ' ' || last_name);
    DBMS_OUTPUT.PUT_LINE(email || ' '  || phone);
  END;
  
  MEMBER Function get_details ( SELF IN OUT NOCOPY person_typ ) 
  Return Varchar 
  IS
  BEGIN
    return (TO_CHAR(idno) || ' ' || first_name || ' ' || last_name ||email || ' '  || phone);
  END;
END;
/

-- Create Relational Table Using Previously Defined person_typ
CREATE TABLE contacts (
  contact         person_typ,
  contact_date    DATE );

INSERT INTO contacts VALUES (
  person_typ (65, 'Verna', 'Mills', 'vmills@example.com', '1-650-555-0125'), 
  to_date('24 Jun 2003', 'dd Mon YYYY'));
INSERT INTO contacts VALUES (
  person_typ (62, 'Bob', 'Jones', 'vmills@example.com', '1-650-555-0125'), 
  to_date('24 Jun 2003', 'dd Mon YYYY'));
  
SELECT c.contact.Email, c.contact.get_idno() FROM contacts c ORder by Contact;


-- Create OBJECT Table Using Previously Defined person_typ

CREATE TABLE person_obj_table OF person_typ;
INSERT INTO person_obj_table VALUES (
       person_typ(103, 'John', 'Smith', 'jsmith@example.com', '1-650-555-0135') );

SELECT p.first_name,p.Last_Name,P.Email,p.IDNO FROM person_obj_table p
        WHERE p.last_name = 'Smith' Order by IDNO DESC;

DECLARE
  person person_typ;
BEGIN -- PL/SQL block for selecting a person and displaying details
  SELECT VALUE(p) INTO person FROM person_obj_table p WHERE p.idno = 101;
  person.display_details();
END;
/
-- Collections:
-- Index By Table, VARRAY and Nested Table

CREATE TYPE people_typ AS TABLE OF person_typ;

CREATE TABLE people_tab (
    group_no NUMBER,
    people_column people_typ )  -- an instance of nested table
    NESTED TABLE people_column STORE AS people_column_nt; -- storage table for NT


INSERT INTO people_tab VALUES (
            100,
            people_typ( person_typ(1, 'John', 'Smith','JSmith', '1-650-555-0135'),
                        person_typ(2, 'Diane','Smith', 'DSmith','1-650-555-3456')));
Select p.Group_NO,O.First_Name from
people_tab p , Table(p.people_column) o;
                        