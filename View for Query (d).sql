--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_LECTURERS_WITH_PHD
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_LECTURERS_WITH_PHD" ("FIRSTNAME", "LASTNAME", "SEX", "SALARY") AS 
  SELECT firstname, lastname, sex, salary 
FROM academicstaff
WHERE post LIKE '%Lecturer%' AND qualifications = 'PhD'
;
