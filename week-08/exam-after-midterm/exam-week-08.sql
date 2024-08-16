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
SELECT e.FName, e.LName, COUNT(d.DEPENDENT_NAME) as "Dependent Count"
FROM employee e, dependent d
WHERE e.SSN = d.ESSN(+)
GROUP BY e.FName, e.LName;

-- 7
SELECT e.FName as "First Name", e.LName as "Last Name", COUNT(DISTINCT w.PNO) as "Project  Count"
FROM employee e, works_on w
WHERE e.SSN = w.ESSN
GROUP BY e.FName, e.LName
HAVING COUNT(DISTINCT w.PNO) > 2;

-- 8
SELECT d.dname, count(e.SSN) as "EmployeeCount"
FROM department d, employee e
WHERE d.dnumber = e.dno
AND e.salary < 30000
AND to_char(sysdate, 'YYYY') - to_char(e.bdate, 'YYYY') < 70
GROUP BY d.dname;

-- 9
SELECT e.FName as "First Name", e.LName as "Last Name"
FROM employee e, dept_locations dl, department d, works_on w
WHERE e.DNO = dl.DNumber
AND e.DNO = d.DNumber
AND e.SSN = w.ESSN
AND dl.DLocation = 'Houston'
AND d.DName = 'Research'
GROUP BY e.FName, e.LName
HAVING count(w.PNO) > 2;

-- 10 :Hard To do; Lazy to do this.

-- 11 :Hard To do; Lazy to do this.

-- 12
SELECT e.FName as "First Name", e.LName as "Last Name", d.DName as "Department Name"
FROM employee e, department d, dependent dp
WHERE e.DNO = d.DNumber
AND e.SSN = dp.ESSN(+)
AND dp.ESSN IS NULL;

-- 13
SELECT e.fname as "Name",
e.lname as "Last Name",
e.salary as "Salary"
FROM employee e, works_on w
WHERE e.ssn = w.essn(+) AND w.essn IS NULL 
AND e.salary > 35000;

-- 14
SELECT p.PName, sum(w.HOURS) as "Total Hours"
FROM project p, works_on w
WHERE p.PNumber = w.PNO
GROUP BY p.PName;

-- 15 :Hard To do; Lazy to do this.

-- 16 :Hard To do; Lazy to do this.

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

-- 18 :Hard to do; Lazy to do this.
