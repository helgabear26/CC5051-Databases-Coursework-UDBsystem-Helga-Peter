--------------------------------------------------------
--  File created - Monday-January-12-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View V_MULTIMEDIA_STUDENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."V_MULTIMEDIA_STUDENTS" ("MATRICULATIONNO", "LASTNAME", "SEX") AS 
  SELECT s.matriculationno, s.lastname, s.sex
FROM student s 
INNER JOIN studentmoduleperformance smp ON s.matriculationno = smp.student_matriculationno
INNER JOIN module m ON smp.module_modulecode = m.modulecode AND smp.module_course_coursecode = m.course_coursecode AND smp.module_course_deptid1 = m.course_deptid1
WHERE m.title = 'Multi-media'
ORDER BY s.lastname
;
