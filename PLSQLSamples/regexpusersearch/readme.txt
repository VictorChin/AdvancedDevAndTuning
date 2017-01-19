Technical Overview

Regular expressions specify patterns to search for in string data using standardized syntax conventions. A regular expression can specify complex patterns of character sequences. For example, the following regular expression:
a(b|c)d
searches for the pattern: 'a', followed by either 'b' or 'c', then followed by 'd'. This regular expression matches both 'abd' and 'acd'.

In addition to specifying character literal expressions as in the above example, Oracle's regular expression implementation also supports the POSIX (Portable Operating System Interface) character classes. This means that you can be very specific about the type of character you are looking for. The POSIX character class must be enclosed by a character list indicated by square brackets([]). For example, the regular expression [[:space:]] matches a space character and [[:space:]]{1,} matches one or more consecutive space characters.

Regular expressions provide a powerful method of identifying patterns of strings within a body of text. Usage ranges from a simple search for a string such as 'Oracle Database' to the more complex task of extracting all URLs to a task like finding all words whose every second character is a vowel. SQL and PL/SQL support regular expressions in Oracle Database 10g. One can make use of the Regular Expression API's from simple searching to complex data validation. They can be used in PROCEDUREs, FUNCTIONs, TRIGGERs, CURSORs, for defining constraints on tables etc.

Application Overview

This sample application demonstrates how regular expression APIs can be used to validate, search, and extract information in TRIGGERs, PROCEDUREs, CURSORs and in CHECK conditions. The sample application uses variety of patterns to search and extract user information such as hobbies and interest, location information etc stored in a database table.
The procedure EMAIL_CHECK uses regular expression REGEXP_LIKE function to validate the user email id. This accepts email ids of format abc123@xyz.com format only. This procedure is called from the VALIDATEUSER trigger which gets fired whenever a new row is inserted or when an existing row is updated. Also the trigger does a validation on the users phone number. The accepted phone number format is 123-123-1234. If these validations fail appropriate error message is displayed to the user.
Also the CHECK_PASSWORD constraint, which uses Regular Expressions makes sure that the PASSWORD field is of alpha-numeric type. In addition this sample also shows how Regular Expressions can be used with Cursors These cursors are defined in the search.sql file, which uses different regular expression functions to extract the information from the USERINFO table.

Configuring the Application

    * Unzip the downloaded RegExpUserSearch.zip. Extract the file contents into <SAMPLE_HOME> directory.
      This creates RegExpSample folder with all the files and folders.

    * Open the command prompt and move to <SAMPLE_HOME>/RegExpSample/src folder by executing the following command,

      cd <SAMPLE_HOME>/RegExpSample/src

    * Open SQL prompt. Connect as SCOTT/TIGER and run the config.sql script from <SAMPLE_HOME>/RegExpSample/src folder. This will create the necessary database objects ( table, trigger, procedure) used by this application.
      Example,

      SQL>@config.sql

Running the Application

Follow the steps give below to run this application.

    * From the SQL command prompt run the search.sql file. Example,

      SQL>@search.sql

      This will prompt for you to enter your choice from the menu. Enter any integer value. e.g, 1,2 or 3.


    * Run the update.sql and observe the functioning of 'validateUser' trigger and 'check_mail' procedure.

      SQL>@update.sql

      Note: Edit update.sql and enter values for email and phone fields as accepted by the application.