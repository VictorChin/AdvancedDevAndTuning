
/** 
 *  @author  : Shrinivas Bhat Padamar
 *  @version : 1.0 
 * 
 *  Name of the Application         :  search.sql
 *  Creation/Modification History   :  24-Nov-2004
 * 
 *  Overview of  Package/Sample     :  This PL/SQL block is used to search the database for users 
 *  with different hobbies and their interest. 
 **/

SET SERVEROUTPUT ON 
PROMPT
PROMPT | ------------------------------------------------------------------------ | ;
PROMPT | Enter your choice for the search                                         | 
PROMPT |                                                                          |
PROMPT | 1 -> Search users who play either football OR baseball AND cricket       | ;
PROMPT | 2 -> Search users who have interest in music                             | ;
PROMPT | 3 -> Print the location information and their hobbies, for all the users | ;
PROMPT |------------------------------------------------------------------------- | ;
PROMPT

DECLARE 

value 	  NUMBER(6);
username  VARCHAR2(30) ; 
hobbies   VARCHAR2(500);
address   VARCHAR2(500);

-- Declare a cursor that fetches users with hobbies related either to football or baseball and cricket. 
-- Here (base|foot)([[:space:]]){0,}ball([^.]*)cricket expression returns true if the 'hobbies' column contains 
-- values like football,baseball, base ball, foot  ball etc. ([^.]*) means occurence of any character multiple 
-- times. The 'i' indicates case-insensitive search 
CURSOR  hobbies_cur IS SELECT username,hobbies FROM userinfo  WHERE REGEXP_LIKE(hobbies, '(base|foot)([[:space:]]){0,}ball([^.]*)cricket','i')  ;

-- Declare a cursor to fetch the user data if their hobbies are related to music. 
-- The 'music|violin|guitar|sing(er|ing)' pattern returns true if the given 
-- data matches any of music,violin, guitar, singer, singing character patterns. 
-- sing(er|ing) represents either singer or singing character pattern.
CURSOR  hobbies_music_cur IS SELECT username,hobbies FROM userinfo  WHERE REGEXP_LIKE(hobbies, 'music|violin|guitar|sing(er|ing)','i') ;

-- This retrieves the location of all the users in the database. 
-- REGEXP_SUBSTR(WEBSITE, ',[^,]+',1,2) fetches the second substring bounded by commas
CURSOR  address_cur IS SELECT username, hobbies, REGEXP_SUBSTR(address, ',[^,]+',1,2) FROM userinfo ;



BEGIN 
-- Read the users choice from the given menu
value := &choice ; 
  IF ( value = 1) THEN 
    
    -- Open the cursor
    OPEN hobbies_cur;
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Searching who play either football OR baseball AND cricket'); 
    DBMS_OUTPUT.PUT_LINE('User Name                Hobbies                          ');
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------');
    -- Loop through the cursor and print the selected values
    LOOP 
      FETCH hobbies_cur INTO username, hobbies ;
      -- Exit the loop when there are no more records in the cursor 
      EXIT WHEN hobbies_cur%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(username || '             '|| hobbies);
    END LOOP ;

    -- Close the cursor
    CLOSE hobbies_cur;

  ELSIF ( value = 2) THEN 
    OPEN hobbies_music_cur;
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Searching for users who are interested in music'); 
    DBMS_OUTPUT.PUT_LINE('User Name                Hobbies               ');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------');
    LOOP 
      FETCH hobbies_music_cur INTO username, hobbies ;
      EXIT WHEN hobbies_music_cur%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(' '|| username || '             '|| hobbies);
    END LOOP ;

    CLOSE hobbies_music_cur;
  
  ELSIF ( value = 3) THEN 
    OPEN address_cur;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Retrieve the location information for all the users in the table') ; 
    DBMS_OUTPUT.PUT_LINE('User Name          Location            Hobbies              ');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    
    LOOP 
      FETCH address_cur INTO username, hobbies ,address ;
      EXIT WHEN address_cur%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(' '|| username || '           '||  address|| '         '||hobbies);
    END LOOP ;

    CLOSE address_cur;

  -- If the input values is other than 1,2 and 3 then print an error message
  ELSE 
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Invalid input. Run the script again and enter a valid choice');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
  END IF;
END; 
/