-- This procedure is used to connect to the SGD database and 
-- retrieve the DNA Genome  sequence for a give region. 
-- This uses Regular Expressions APIs to filter out only the 
-- required data from the complete HTTP data. 

SET ESCAPE ON

-- Create PL/SQL function which returns the DNA sequence
CREATE OR REPLACE FUNCTION dnaseq(
		region in VARCHAR2 ) 
		RETURN VARCHAR2 is
	v_stream CLOB;
	strt NUMBER;
	seqstring VARCHAR2(4000);
BEGIN
-- Un comment the below line and set the proxy server, if you are behind the firewall.
-- Contact your administrator for more details
-- UTL_HTTP.SET_PROXY('www.yourproxy.com', NULL);

-- Retrieve the HTTP stream:
v_stream := HTTPURITYPE.GETCLOB(HTTPURITYPE.CREATEURI(
'http://db.yeastgenome.org/cgi-bin/SGD/getSeq?seq='||region||
'\&flankl=0\&flankr=0\&=p3map')
);

-- Trim off the head of the stream
strt := DBMS_LOB.INSTR(v_stream, 'Submit', 1, 1);

-- Remove the control characters, new lines, etc. 
-- The REGEXP_REPLACE function replaces all of the control characters ( [[:cntrl:]] ), 
-- by a blank character ('')
seqstring := REGEXP_REPLACE(DBMS_LOB.SUBSTR(v_stream, 4000, strt), '[[:cntrl:]]', '');

-- Return the sequence that matches the uppercase characters atleast 10 times. 
RETURN (REGEXP_SUBSTR(seqstring , '[[:upper:]]{10,}'));
END;
/
