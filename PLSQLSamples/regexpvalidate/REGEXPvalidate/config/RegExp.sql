
-- Create table 

CREATE TABLE userinfo( username VARCHAR2(20) , password VARCHAR2(40), firstname VARCHAR2(30), lastname VARCHAR2(30) NOT NULL, email VARCHAR2(50) 
NOT NULL, phone VARCHAR2(12) NOT NULL)
/
ALTER TABLE SCOTT.USERINFO ADD CONSTRAINT USERNAME_PRIMARY_KEY PRIMARY KEY (USERNAME)
/



-- Procedure to check if the given username is available in the databse 
-- else suggest a  new username based on the phone number entered. 

CREATE OR REPLACE PROCEDURE CHECK_USERNAME(uname IN VARCHAR2, 
					   userphone IN VARCHAR2,
                                           sugg1 OUT VARCHAR2, 
					   sugg2 OUT VARCHAR2) AS
s1 varchar2(5);
s2 varchar2(5);
usercount number(1);	   
BEGIN
SELECT count(username) INTO usercount FROM userinfo where username=uname;
-- Check if the given user name exists
IF ( usercount > 0 ) THEN 
-- Get the third slice of the phone number
SELECT REGEXP_SUBSTR(userphone,'[^-]+',1,3) INTO s1 FROM dual; 

-- Get the second slice of the phone number
SELECT REGEXP_SUBSTR(userphone,'[^-]+',1,2) INTO s2 FROM dual;

-- Create new userid by contcatinating user id and the phone number strings
sugg1 := concat(uname,concat('_',s1) ) ;
sugg2 := concat(uname,concat('_',s2) );

ELSE 
   sugg1 := NULL ;
   sugg2 := NULL;
   
END IF;     
END;
/

-- Procedure to check the password format. The password must be of alpha-numeric type.
CREATE OR REPLACE PROCEDURE CHECK_PASSWORD (pass IN VARCHAR2) AS
isValid BOOLEAN;
BEGIN
  IF ( pass IS NOT NULL ) THEN
   -- Execute the regular expression to check the password format
   isValid := REGEXP_LIKE( pass ,'(([0-9][a-z]{1}|[a-z][0-9]{1}))' );    

 	 IF ( NOT isValid  )  THEN
      raise_application_error(-20110, 'Password must contain alpha-numeric characters');
  	 END IF ; 
  ELSE
    raise_application_error(-202111,'Password can not be NULL');    
  END IF;
END;
/

-- Procedure to check the email format. This accepts Email ids of 
-- abc@xyz.com format
CREATE OR REPLACE PROCEDURE CHECK_EMAIL (email IN VARCHAR2 ) AS
isValid BOOLEAN;
BEGIN
  IF ( Email IS NOT NULL ) THEN
  	isValid := REGEXP_LIKE( Email ,'([a-z]+|[0-9]+)@[[:alpha:]]+[.]COM','i' );    
 	 IF ( NOT isValid  )  THEN
      raise_application_error(-20101, 'E-Mail id is not valid');
  	 END IF ; 
  ELSE
    raise_application_error(-20102, 'E-Mail id can not be NULL');    
  END IF;
END;
/

-- This procedure checks the correctness of phone number entered
-- Phone number should be of 111-222-3333 format
CREATE OR REPLACE PROCEDURE CHECK_PHONE (phone IN VARCHAR2) AS
isValid BOOLEAN;
BEGIN
  IF ( phone IS NOT NULL ) THEN
   isValid := REGEXP_LIKE(phone,'^([[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4})$');
 	 IF ( NOT isValid  )  THEN
      raise_application_error(-20110, 'Phone number is not valid');
  	 END IF ; 
  ELSE
    raise_application_error(-202111,'Phone number can not be NULL');    
  END IF;
  
END;
/

