SELECT *
FROM academicstaff 
WHERE post LIKE '%Lecturer%'
FETCH FIRST 5 ROWS ONLY;