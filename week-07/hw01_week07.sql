-- 1
SELECT  employee.fname as "Name",
       MAX(dependent.essn) as "Max Dependent"
FROM    employee, dependent
GROUP BY employee.fname;

-- 2
SELECT employee.fname AS "Name",
       employee.salary AS "Salary",
       COUNT(dependent.essn) AS "Count Dependent"
  FROM employee,
       dependent
 WHERE salary = (
    SELECT max(employee.salary)
      FROM employee,
           dependent
     WHERE employee.ssn > 2
       AND employee.salary < 35000
)
 GROUP BY employee.fname,
          employee.salary,
          dependent.essn;

-- 3
SELECT count(*) AS "Count July Employee"
  FROM employee
 WHERE TO_CHAR(
    bdate,
    'MM'
) = 07;
