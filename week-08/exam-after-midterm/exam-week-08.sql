-- 1
SELECT count(e.SSN) as "Employee In Department"
FROM employee e, works_on w, project p
WHERE e.SSN = w.ESSN
AND w.PNO = p.PNumber
AND p.PName = 'Computerization';

-- 2
SELECT e.fname, e.lname, d.dname, dl.dlocation
FROM employee e, department d, dept_locations dl
WHERE e.dno = d.dnumber
AND d.dnumber = dl.dnumber
AND dl.dlocation = 'Houston'
AND d.dnumber > 1;

-- 3
SELECT p.pname as "Project Name",
count(w.ESSN) as "Employee Count"
FROM project p, works_on w
WHERE p.pnumber = w.pno
GROUP BY p.pname;

-- 4
SELECT e.FName as "First Name", e.LName as "Last Name", COUNT(DISTINCT w.PNO) AS "Project Count"
FROM employee e, works_on w
WHERE e.SSN = w.ESSN
GROUP BY e.FName, e.LName;

-- 5
SELECT e.fname, e.lname, count(s.SSN) as "simple boi"
FROM employee e, employee s
WHERE e.ssn = s.superssn
GROUP BY e.fname, e.lname;

-- 6

-- 7

-- 8
SELECT d.dname, count(e.SSN) as "EmployeeCount"
FROM department d, employee e
WHERE d.dnumber = e.dno
AND e.salary < 30000
AND to_char(sysdate, 'YYYY') - to_char(e.bdate, 'YYYY') < 70
GROUP BY d.dname;

-- 9

-- 10

-- 11

-- 12

-- 13
SELECT e.fname as "Name",
e.lname as "Last Name",
e.salary as "Salary"
FROM employee e, works_on w
WHERE e.ssn = w.essn(+) AND w.essn IS NULL 
AND e.salary > 35000;

-- 14

-- 15

-- 16

-- 17
SELECT e.fname as "Name",
e.lname as "Last Name",
d.dname as "Department Name",
e.bdate as "Min BirthDay"
FROM employee e, department d
WHERE e.bdate = (
  SELECT min(e2.bdate) as "Min B date"
  FROM employee e2
  WHERE e2.dno = d.dnumber
);

-- 18
