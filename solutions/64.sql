WITH t1 as (SELECT point, date, 'inc' as type FROM income
UNION ALL
SELECT point, date, 'out' as type FROM outcome)
SELECT t2.point, t2.date, t3.type FROM (
    SELECT point, date FROM t1 GROUP BY point, date  HAVING count(*)=1
    ) AS t2
    LEFT JOIN (SELECT * FROM t1) t3 on t3.point=t2.point and t3.date = t2.date;
