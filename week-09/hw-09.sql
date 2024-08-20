-- 14
SELECT p.PName, sum(w.HOURS) as "Total Hours"
FROM project p, works_on w
WHERE p.PNumber = w.PNO
GROUP BY p.PName;

-- 18 
SELECT d.DName as "Department Name", SUM(w.HOURS) AS "Total Hours"
FROM department d, project p, works_on w
WHERE d.DNumber = p.DNum
  AND p.PNumber = w.PNO
GROUP BY d.DName
HAVING SUM(w.HOURS) < (
    SELECT AVG(TotalHours)
    FROM (
        SELECT SUM(w2.HOURS) AS TotalHours
        FROM department d2, project p2, works_on w2
        WHERE d2.DNumber = p2.DNum
          AND p2.PNumber = w2.PNO
        GROUP BY d2.DNumber
    ) as "Dept Hours"
);
