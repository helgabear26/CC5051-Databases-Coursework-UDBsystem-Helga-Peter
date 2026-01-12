--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_DEPARTMENT_EMPLOYING_BY_GENDER
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_DEPARTMENT_EMPLOYING_BY_GENDER" ("DEPTNAME", "FEMALE_STAFF", "MALE_STAFF") AS 
  SELECT d.deptname, COUNT(CASE WHEN a.sex = 'F' THEN 1 END) AS female_staff, COUNT(CASE WHEN a.sex = 'M' THEN 1 END) AS male_staff
FROM department d
LEFT JOIN course c ON d.deptid = c.department_deptid
LEFT JOIN academicstaff a ON c.academicstaff_staffno = a.staffno
GROUP BY d.deptname
;
