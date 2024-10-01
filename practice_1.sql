--EX1
select NAME from CITY
where COUNTRYCODE = 'USA' AND POPULATION >120000

--EX2
select * from CITY
where COUNTRYCODE = 'JPN'

--EX3
select CITY, STATE from STATION

--EX4
 select distinct CITY from STATION
 where CITY like 'a%' or CITY like 'e%' or CITY like 'i%' or CITY like 'o%' or CITY like 'u%'

--EX5
select distinct CITY from STATION
where CITY like '%a' or CITY like '%e' or CITY like '%i' or CITY like '%o' or CITY like '%u'

--EX6
select distinct CITY from STATION
where CITY not like 'A%' and CITY not like 'E%' and CITY not like 'I%' and CITY not like 'O%' and CITY not like 'U%'

--EX7
select name from Employee
Order by name asc

--EX8
select name from Employee
where salary >2000 and months <10
order by employee_id asc

--EX9
select product_id from Products
where low_fats = 'Y' and recyclable = 'Y'

--EX10
select name from Customer
where referee_id !=2 or referee_id is null

--EX11
select name, population, area from World
where area >= 3000000 or population >= 25000000

--EX12
select distinct author_id as id from Views
where author_id = viewer_id
order by author_id asc

--EX13
SELECT DISTINCT part, assembly_step FROM parts_assembly
where finish_date is NULL

--EX14
select * from lyft_drivers
where yearly_salary <=30000 or yearly_salary >=70000

--EX15
select * from uber_advertising
where money_spent > 100000 and year = 2019

