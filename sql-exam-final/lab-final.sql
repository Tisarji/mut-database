-- 1
SELECT p.proname AS "PRONAME",
       SUM(sd.itemtotal) AS "TOTALSALE"
FROM product p, saledetail sd, sale s
WHERE p.productid = sd.proid
  AND s.saleid = sd.saleid
  AND TO_CHAR(s.saledate, 'MM/YYYY') = '04/2024'
GROUP BY p.proname;

-- 2
SELECT c.name AS "NAME",
       COUNT(s.saleid) AS "NOOFCOMIN", SUM(sd.itemtotal) AS "TOTALSALE"
FROM cus c, sale s, saledetail sd
WHERE c.cusid = s.cusid
  AND s.saleid = sd.saleid
GROUP BY c.name;
