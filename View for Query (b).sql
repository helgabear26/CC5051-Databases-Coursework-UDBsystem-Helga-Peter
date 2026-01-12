--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_PGDIT_MODULES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_PGDIT_MODULES" ("TITLE", "STARTDATE", "ENDDATE") AS 
  SELECT m.title, m.startdate, m.enddate
FROM module m 
INNER JOIN course c ON m.course_coursecode = c.coursecode
WHERE c.title = 'PgDIT'
;
