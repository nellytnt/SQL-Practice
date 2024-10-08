--EX 1
select name
from students
where marks>75
order by right(name,3), ID asc

--EX 2
select user_id,
concat(upper (left(name,1)), lower(right(name,length(name)-1))) as name
from users

--EX 3
select manufacturer,
'$' || round((sum(total_sales)/1000000),0) || ' ' || 'million' as sale
from pharmacy_sales
group by manufacturer
order by sum(total_sales) desc, manufacturer

--EX 4
SELECT 
extract(month from submit_date) as mth,
product_id,
round(avg(stars),2) as avg_stars
from reviews
group by extract(month from submit_date), product_id  --it will give me error if I use 'mth' instead of 'extract(month from submit_date)' here
order by mth, product_id

--EX 5
SELECT sender_id, 
count(message_id) as message_count
FROM messages
where to_char(sent_date, 'mm/yyyy') = '08/2022'
group by sender_id
order by message_count desc
limit 2

--EX 6
select tweet_id
from tweets
where length(content) >15

--EX 7
select 
activity_date as day,
count(distinct user_id) as active_users
from activity
where activity_date between '2019-06-28' AND '2019-07-27'
group by activity_date

--EX 8  (Couldn't check solution). Output = 8
select 
count(id) as number_of_employees
from employees
where to_char(joining_date, 'mm/yyyy') between '01/2022' and '07/2022'

-- EX 9
select 
position('a' in first_name) as position
from worker
where first_name = 'Amitah'

--EX 10 
select title,
substring(title, length(winery)+2,4) as year
from winemag_p2
where country = 'Macedonia'
