SELECT a.firstname, a.lastname, a.street, a.town, a.postcode , a.salary
FROM academicstaff a
INNER JOIN departmentmanager dm 
  ON a.staffno = dm.academicstaff_staffno
WHERE a.sex = 'F';