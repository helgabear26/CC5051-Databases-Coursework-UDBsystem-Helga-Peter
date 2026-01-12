--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_FEMALE_DEPARTMENT_MANAGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_FEMALE_DEPARTMENT_MANAGERS" ("FIRSTNAME", "LASTNAME", "STREET", "TOWN", "POSTCODE", "SALARY") AS 
  SELECT a.firstname, a.lastname, a.street, a.town, a.postcode, a.salary 
FROM academicstaff a   
INNER JOIN departmentmanager dm ON a.staffno = dm.academicstaff_staffno 
WHERE a.sex = 'F'
;
