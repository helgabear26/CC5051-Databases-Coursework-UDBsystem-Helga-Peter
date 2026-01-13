SELECT d.deptname, LISTAGG(S.FIRSTNAME || '' || S.LASTNAME, ',') WITHIN GROUP (ORDER BY s.lastname) AS student_names
FROM department d 
LEFT JOIN course c ON d.deptid = c.department_deptid
LEFT JOIN student s ON c.coursecode = s.course_code
GROUP BY d.deptname;