--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_DEPARTMENTS_E_BLOCK
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_DEPARTMENTS_E_BLOCK" ("DEPTID", "DEPTNAME", "PHONENUMBER", "FAX", "LOCATION") AS 
  SELECT deptid, deptname, phonenumber, fax, location
FROM department
WHERE location = 'E Block'
;
