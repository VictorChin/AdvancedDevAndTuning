-- This PL/SQL  is used to find the enzymes in the DNA sequence for a given region 
-- The "regexp_instr" function searches for a particular pattern in the DNA sequence 
-- and prints its first occurence, within the sequence. 
-- If the output is '0' it means that the given sequence does not contain 
-- the given enzyme pattern.

SET SERVEROUTPUT ON 

DECLARE 

seq 		VARCHAR2(4000);
region_id 	VARCHAR2(30);

BEGIN

-- Get the region from the user 
region_id :='&region' ;

-- Execute the DNASEQ stored procedure which extracts the sequence data from the 
-- SGD website. 
SELECT dnaseq(region_id) INTO seq FROM DUAL;

-- Insert retrieved values into the database for future reference. 
INSERT INTO dna_db(region,dna_seq) VALUES (region_id,seq ) ;
COMMIT;

DBMS_OUTPUT.PUT_LINE(' ');
DBMS_OUTPUT.PUT_LINE(' ');
DBMS_OUTPUT.PUT_LINE('         Enzyme Position Analysis for '||region_id||' Genome DNA Sequence             ');
DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------------');
DBMS_OUTPUT.PUT_LINE('		ENZYME NAME     	POSITION (First occurrence )'   ) ;     
DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------------');

-- Print the first occurence of 'GAATTC' pattern in the sequence
DBMS_OUTPUT.PUT_LINE('		EcoRI_Enzyme    	' ||  regexp_instr(seq,'GAATTC') );

-- Print the first occurence of 'GGATCC' pattern in the sequence
DBMS_OUTPUT.PUT_LINE('		BamHI_Enzyme    	' ||  regexp_instr(seq,'GGATCC') );

-- Print the first occurence of 'GT[CT]{1}[GA]{1}AC' pattern in the sequence. 
-- Here [CT]{1} means that the pattern can contain any one character, either C or T
DBMS_OUTPUT.PUT_LINE('		HindII_Enzyme   	' ||  regexp_instr(seq,'GT[CT]{1}[GA]{1}AC') ) ;

-- Print the first occurence of 'C[CT]{1}CG[GA]{1}G' pattern in the sequence. 
DBMS_OUTPUT.PUT_LINE('		Ama87I_Enzyme   	' ||  regexp_instr(seq,'C[CT]{1}CG[GA]{1}G') ) ;

-- Print the first occurence of 'GAA[ACGT]{4}TTC' pattern in the sequence. 
-- Here [ACGT]{4} means that the pattern can contain a combination of only these four characters
-- e.g ACGT, AAAA, CCGG, CCCC, ACGG, ACTT etc. 
DBMS_OUTPUT.PUT_LINE('		Asp700I_Enzyme  	' ||  regexp_instr(seq,'GAA[ACGT]{4}TTC' ) ) ;

DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------------');
DBMS_OUTPUT.PUT_LINE(' ');
DBMS_OUTPUT.PUT_LINE(' ');

END;
/
