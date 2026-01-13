SELECT a.lastname, m.title AS module_title, atm.hoursperweek
FROM academicstaff a   
INNER JOIN academicstaffteachesmodule atm
  ON a.staffno = atm.academicstaff_staffno
INNER JOIN module m ON atm.module_modulecode = m.modulecode AND atm.module_coursecode1 = m.course_coursecode AND atm.module_deptid1 = m.course_deptid1
WHERE atm.hoursperweek > 6;