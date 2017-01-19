
-- This SQL query searches the local database for the following enzyme sites and 
-- prints their first occurrence
-- e.g regexp_instr( dna_seq ,'GAATTC')  prints the first occurence of 
-- 'GAATTC' pattern in the sequence
PROMPT
PROMPT Pattern analysis on locally stored DNA Sequence
SELECT  region,
        regexp_instr( dna_seq ,'GAATTC')   		EcoRI   ,
	regexp_instr( dna_seq ,'GT[CT]{1}[GA]{1}AC')    HindII  ,
	regexp_instr( dna_seq ,'C[CT]{1}CG[GA]{1}G')    Ama87I ,
        regexp_instr( dna_seq ,'GAA[ACGT]{4}TTC' )	Asp700I 
FROM dna_db;