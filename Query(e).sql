SELECT a.lastname, a.post, a.qualifications
FROM academicstaff a
INNER JOIN course c ON a.staffno = c.academicstaff_staffno
INNER JOIN department d ON c.department_deptid = d.deptid
WHERE d.deptname = 'CIS';