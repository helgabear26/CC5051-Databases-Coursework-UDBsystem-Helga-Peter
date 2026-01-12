--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_COURSES_MORE_THAN_10_STUDENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_COURSES_MORE_THAN_10_STUDENTS" ("COURSE_TITLE", "NUMBER_OF_STUDENTS") AS 
  SELECT c.title AS course_title, COUNT(s.matriculationno) AS number_of_students
FROM course c
INNER JOIN student s ON s.course_coursecode = c.coursecode AND s.course_deptid1 = c.department_deptid
GROUP BY c.title
HAVING COUNT (s.matriculationno) > 10
;
