
/** 
 *  @author  : Shrinivas Bhat Padamar
 *  @version : 1.0 
 * 
 *  Name of the Application         :  config.sql
 *  Creation/Modification History   :  22-Nov-2004
 * 
 *  Overview of  Package/Sample     :  This file cleans up creates necessary tables, procedures and 
 *  triggers used by the sample application.
 **/

-- Clean up the database objects
DROP TRIGGER validateUser;
DROP PROCEDURE check_email;
DROP TABLE userinfo; 

-- Create the table 
CREATE TABLE userinfo( 
	username VARCHAR2(20) , 
	password VARCHAR2(40), 
	email VARCHAR2(50) NOT NULL, 
	phone VARCHAR2(12) NOT NULL,
	hobbies VARCHAR2(2000), 
	address VARCHAR2(2000) 
	)
/
-- Add PRIMARY KEY constraint
ALTER TABLE SCOTT.USERINFO ADD CONSTRAINT USERNAME_PRIMARY_KEY PRIMARY KEY (USERNAME)
/

-- This statement adds a check constraint which does a check on the password format. 
-- This uses a regular expression to check if the password is alpha-numeric or not. 
ALTER TABLE scott.userinfo  ADD CONSTRAINT check_password  CHECK (REGEXP_LIKE( password,'(([0-9][a-z]{1}|[a-z][0-9]{1}))' ))
/

-- Insert data into the userinfo table
INSERT INTO USERINFO ( USERNAME, PASSWORD, EMAIL, PHONE, HOBBIES,ADDRESS ) VALUES ( 'Jason', 'steve123', 'Jason@Jason.com', '515-123-4567', 'football, writing,Cricket', '2455 Rose Garden Rd, 15220,  Pittsburgh, PA, US'); 
INSERT INTO USERINFO ( USERNAME, PASSWORD, EMAIL, PHONE, HOBBIES,ADDRESS ) VALUES ( 'Neena', 'neena88', 'Neena@Neena.com', '515-123-4568', 'foot ball, guitarist', '1812 Timberline Rd, 16601,  Altoona   , PA, US'); 
INSERT INTO USERINFO ( USERNAME, PASSWORD, EMAIL, PHONE, HOBBIES,ADDRESS ) VALUES ( 'Lex  ', 'Lex001', 'Lex@email.com', '515-123-4569', 'reading', '2899 Grand Ave, 15225,  Pittsburgh, PA, US'); 
INSERT INTO USERINFO ( USERNAME, PASSWORD, EMAIL, PHONE, HOBBIES,ADDRESS ) VALUES ( 'David', 'dav007', 'David@email.com', '590-423-4569', 'base ball, cricket, music', '1126 Pawlings Rd, 19403,  Norristown, PA, US'); 
INSERT INTO USERINFO ( USERNAME, PASSWORD, EMAIL, PHONE, HOBBIES,ADDRESS ) VALUES ( 'John ', 'John222', 'John@Johnmail.com', '650-121-2019', ' baseball', '354 N Prince St, 17603,  Lancaster, PA, US'); 

commit;

-- Procedure to check the email format. This accepts Email ids of 
-- abc123@xyz.com format. 
-- The ([a-z]+|[0-9]+)@[[:alpha:]]+[.]COM pattern is useful in 
-- identifying if the email id is of xyz123@abc.com format.
CREATE OR REPLACE PROCEDURE check_email (email IN VARCHAR2 ) AS
isValid BOOLEAN;
BEGIN
  IF ( Email IS NOT NULL ) THEN
  	isValid := REGEXP_LIKE( Email ,'([a-z]+|[0-9]+)@[[:alpha:]]+[.]COM','i' );    
 	 IF ( NOT isValid  )  THEN
      raise_application_error(-20101, 'E-Mail id should be of abc@xyz.com format');
  	 END IF ; 
  ELSE
    raise_application_error(-20102, 'E-Mail id can not be NULL');    
  END IF;
END;
/


-- Create a trigger that validates the phone number. The regular expression 
-- ([[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4} uses the POSIX representation 
-- to check the correctness of phone numbers entered. [[:digit:]]{3} indicates 
-- occurrence of any numeric value 3 times. It accepts values only of 
-- type 123-123-1234 
CREATE OR REPLACE TRIGGER validateUser BEFORE INSERT OR UPDATE ON userinfo FOR EACH ROW 
DECLARE 
isValid BOOLEAN;
BEGIN
  IF ( :NEW.phone IS NOT NULL ) THEN
   isValid := REGEXP_LIKE(:NEW.phone,'^([[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4})$');
 	 IF ( NOT isValid  )  THEN
      raise_application_error(-20110, 'Phone number should be of 123-123-1234 format');
  	 END IF ; 
  ELSE
    raise_application_error(-20111,'Phone number can not be NULL');    
  END IF;

-- Validate the email id entered. 
check_email(:NEW.email);
END;
/

