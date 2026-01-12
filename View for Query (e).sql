--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_CIS_ACADEMICSTAFF
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_CIS_ACADEMICSTAFF" ("LASTNAME", "POST", "QUALIFICATIONS") AS 
  SELECT a.lastname, a.post, a.qualifications 
FROM academicstaff a 
INNER JOIN course c ON a.staffno = c.academicstaff_staffno
INNER JOIN department d ON c.department_deptid = d.deptid 
WHERE d.deptname = 'CIS'
;
