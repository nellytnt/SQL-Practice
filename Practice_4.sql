--EX 1
SELECT
SUM(CASE
  WHEN device_type = 'laptop' then 1
  ElSE 0
END) AS laptop_views,
SUM(CASE
  WHEN device_type in ('phone','tablet') then 1
  ELSE 0
END) AS mobile_views
FROM viewership

--EX 2
SELECT x, y, z,
CASE
    WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
    ELSE 'No'
END AS triangle
FROM Triangle

--EX 3
SELECT
ROUND(100* SUM(CASE 
  WHEN call_category = 'n/a' OR call_category is NULL then 1
  ELSE 0
  END) / count(*) , 1) AS uncategorised_call_pct
FROM callers

--EX 4
SELECT name FROM Customer
WHERE referee_id !=2 OR referee_id IS NULL

--EX 5
SELECT survived,
SUM(CASE
    WHEN pclass=1 THEN 1 ELSE 0
    END) AS first_class,
SUM(CASE
    WHEN pclass=2 THEN 1 ELSE 0
    END) AS second_class,
SUM(CASE
    WHEN pclass=3 THEN 1 ELSE 0
    END) AS third_class
FROM titanic
GROUP BY survived
