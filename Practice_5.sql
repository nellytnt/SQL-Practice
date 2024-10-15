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

