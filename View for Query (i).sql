--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_CIS_COUNT_BY_GENDER
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_CIS_COUNT_BY_GENDER" ("FEMALE_STAFF", "MALE_STAFF") AS 
  SELECT SUM(CASE WHEN a.sex = 'F' THEN 1 ELSE 0 END) AS female_staff, SUM(CASE WHEN a.sex = 'M' THEN 1 ELSE 0 END) AS male_staff
FROM academicstaff a
INNER JOIN course c
  ON a.staffno = c.academicstaff_staffno
INNER JOIN department d
  ON c.department_deptid = d.deptid
WHERE d.deptname = 'CIS'
;
