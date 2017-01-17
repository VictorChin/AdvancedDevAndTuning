CREATE TYPE person_typ AS OBJECT (
  idno           NUMBER,
  first_name     VARCHAR2(20),
  last_name      VARCHAR2(25),
  email          VARCHAR2(25),
  phone          VARCHAR2(20),
  MAP MEMBER FUNCTION get_idno RETURN NUMBER, 
  MEMBER PROCEDURE display_details ( SELF IN OUT NOCOPY person_typ ));
/

CREATE TYPE BODY person_typ AS
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
END;
/

-- Create Relational Table Using Previously Defined person_typ
CREATE TABLE contacts (
  contact         person_typ,
  contact_date    DATE );

INSERT INTO contacts VALUES (
  person_typ (65, 'Verna', 'Mills', 'vmills@example.com', '1-650-555-0125'), 
  to_date('24 Jun 2003', 'dd Mon YYYY'));
  
SELECT c.contact.get_idno() FROM contacts c;


-- Create OBJECT Table Using Previously Defined person_typ

CREATE TABLE person_obj_table OF person_typ;
INSERT INTO person_obj_table VALUES (
       person_typ(101, 'John', 'Smith', 'jsmith@example.com', '1-650-555-0135') );

SELECT VALUE(p) FROM person_obj_table p
        WHERE p.last_name = 'Smith';

DECLARE
  person person_typ;
BEGIN -- PL/SQL block for selecting a person and displaying details
  SELECT VALUE(p) INTO person FROM person_obj_table p WHERE p.idno = 101;
  person.display_details();
END;
/