SELECT staffno, lastname, sex, post
FROM academicstaff
WHERE salary > (SELECT AVG(salary) FROM academicstaff);