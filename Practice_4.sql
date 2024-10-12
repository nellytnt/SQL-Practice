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
