--EX 1
select b.Continent, 
floor(avg(a.Population)) as avg_populations
from city as a
join country as b
on a.CountryCode = b.Code 
group by b.Continent

--EX 2
SELECT
round((sum(case
      when b.signup_action = 'Confirmed' then 1
      else 0
      end) *1.00/ count(signup_action)) ,2) as confirm_rate
FROM emails as a
LEFT JOIN texts as b
ON a.email_id =b.email_id

--EX 3
SELECT b.age_bucket,
ROUND((SUM(CASE WHEN a.activity_type = 'send' THEN time_spent ELSE 0 END)*100.00/
      (SUM(CASE WHEN a.activity_type = 'open' THEN time_spent ELSE 0 END) + 
      SUM(CASE WHEN a.activity_type = 'send' THEN time_spent ELSE 0 END))),2) as send_perc,
ROUND((SUM(CASE WHEN a.activity_type = 'open' THEN time_spent ELSE 0 END)*100.00/
      (SUM(CASE WHEN a.activity_type = 'open' THEN time_spent ELSE 0 END) + 
      SUM(CASE WHEN a.activity_type = 'send' THEN time_spent ELSE 0 END))),2) as open_perc
FROM activities AS a 
JOIN age_breakdown AS b  
ON a.user_id=b.user_id
GROUP BY b.age_bucket

--EX 4
SELECT customer_id
FROM customer_contracts as a
JOIN products as b 
ON a.product_id = b.product_id
GROUP BY customer_id
HAVING COUNT(DISTINCT b.product_category) = (SELECT COUNT(DISTINCT product_category) FROM products);

--EX 5
select mng.employee_id, mng.name,
count(emp.reports_to ) as reports_count,
ROUND(AVG(emp.age), 0) AS average_age 
from employees as mng
join employees as emp
on  mng.employee_id = emp.reports_to
group by  mng.employee_id, mng.name

--EX 6
select b.product_name,
sum(a.unit) as unit
from Orders as a
join Products as b
on a.product_id  = b.product_id  
where a.order_date between "2020-02-01" and "2020-02-29"
group by b.product_name
having sum(a.unit) >= 100

-- EX 7
SELECT b.page_id
FROM page_likes as a  
FULL OUTER JOIN pages as b 
ON a.page_id = b.page_id
WHERE a.liked_date is NULL
ORDER BY b.page_id ASC
