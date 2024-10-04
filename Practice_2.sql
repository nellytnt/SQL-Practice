--EX 1
select distinct CITY from STATION
where ID % 2 = 0

--EX 2
select
count(city)- count(distinct city) as different_value
from station

--EX 4
select
round(cast(sum(order_occurrences*item_count)/sum(order_occurrences) as decimal),1) as mean
from items_per_order

--EX 5
SELECT candidate_id FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill) =3

--EX 6
SELECT user_id,
date(max(post_date))-date(min(post_date)) as days_between
FROM posts
where date(post_date) between '2021-01-01' and '2021-12-31'
group by user_id
having count(user_id)>1

--EX 7
SELECT card_name,
max(issued_amount)-min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference desc

--EX 8
SELECT manufacturer,
count(drug) as drug_count,
abs(sum(cogs-total_sales)) as total_loss
FROM pharmacy_sales
where cogs>total_sales
group by manufacturer
order by total_loss desc

--EX 9
