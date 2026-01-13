SELECT firstname, lastname, sex, salary
FROM academicstaff
WHERE post LIKE '%Lecturer%' AND qualifications = 'PhD';
