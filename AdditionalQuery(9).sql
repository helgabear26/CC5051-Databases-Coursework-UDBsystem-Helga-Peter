SELECT deptid
FROM department
MINUS
SELECT d.deptid 
FROM department d 
INNER JOIN departmentmanager dm ON d.deptid = dm.department_deptid