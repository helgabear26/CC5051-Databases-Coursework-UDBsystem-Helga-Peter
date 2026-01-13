SELECT m.title, m.startdate, m.enddate
FROM module m
INNER JOIN course c
  ON m.course_coursecode = c.coursecode
 AND m.course_deptid1 = c.department_deptid
WHERE c.title = 'PgDIT';


