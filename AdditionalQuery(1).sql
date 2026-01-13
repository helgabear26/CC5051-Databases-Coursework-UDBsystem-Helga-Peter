SELECT s.matriculationno, s.firstname, s.lastname, s.sex  
FROM student s  
INNER JOIN course c ON s.course_coursecode AND s.course_deptid1 = c.department_deptid 
INNER JOIN department d ON c.department_deptid = d.deptid 
WHERE d.deptname = 'Physics'
