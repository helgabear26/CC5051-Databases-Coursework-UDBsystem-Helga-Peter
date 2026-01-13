SELECT d.deptname, COUNT(CASE WHEN a.sex = 'F' THEN 1 END) AS female_staff, COUNT(CASE WHEN a.sex = 'M' THEN 1 END) AS male_staff
FROM department d
LEFT JOIN course c ON d.deptid = c.department_deptid
LEFT JOIN academicstaff a ON c.academicstaff_staffno = a.staffno
GROUP BY d.deptname;
