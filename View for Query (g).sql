--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_ABOVE_AVERAGE_SALARY
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_ABOVE_AVERAGE_SALARY" ("STAFFNO", "LASTNAME", "SEX", "POST") AS 
  SELECT staffno, lastname, sex, post 
FROM academicstaff
WHERE salary > (SELECT AVG(salary) FROM academicstaff)
;
