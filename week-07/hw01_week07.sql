-- -- 1
-- SELECT  employee.fname as "Name",
--        MAX(dependent.essn) as "Max Dependent"
-- FROM    employee, dependent
-- GROUP BY employee.fname;

-- -- 2
-- SELECT employee.fname AS "Name",
--        employee.salary AS "Salary",
--        COUNT(dependent.essn) AS "Count Dependent"
--   FROM employee,
--        dependent
--  WHERE salary = (
--     SELECT MAX(employee.salary)
--       FROM employee,
--            dependent
--      WHERE employee.ssn > 2
--        AND employee.salary < 35000
-- )
--  GROUP BY employee.fname,
--           employee.salary,
--           dependent.essn;

-- 3
-- SELECT COUNT(*) as "Count July Employee"
--   FROM employee
--  WHERE TO_CHAR(
--     bdate,
--     'MM'
-- ) = 07;

-- SELECT COUNT(*) as "Count July Employee"
--   FROM employee
--  WHERE TO_DATE(TO_CHAR(
--     bdate,
--     'MM'
-- ), 'MM') = TO_DATE('07','MM');


-- Pactice Subject: Show Employee Name at Houton 
-- 4
select employee.fname as "Name",
       dept_locations.dlocation as "Location"
  from employee,
       department,
       dept_locations
 where employee.dno = department.dnumber
   and department.dnumber = dept_locations.dnumber;
