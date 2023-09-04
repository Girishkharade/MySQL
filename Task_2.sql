use Project_task;
-- 1
select * from emp
where deptno = 10 and salary >3000;

-- 2
-- 2.1
select count(marks) from students
where marks between 50 and 80;
-- 2.2
select count(marks) from students
where marks between 80 and 100;

-- 3
select distinct city from station
where id%2=0;

-- 4
select count(city)-count(distinct city) from station;

-- 5
select distinct city from station
where city like 'a%' or 'e%'or 'i%' or 'o%' or'u%';

select distinct city from station
where left(city,1) in ('a','e','i','o','u')
and right(city,1) in ('a','e','i','o','u');

select distinct city from station
where city not like 'a%' or 'e%'or 'i%' or 'o%' or'u%';

select distinct city from station
where not  left(city,1) in ('a','e','i','o','u')
and not  right(city,1) in ('a','e','i','o','u');


-- 6
select * from emp 
where salary >2000
and hire_date >'2017-04-01'
order by  salary  desc;

-- 7
select * from emp;
select deptno,sum(salary) from emp
group by deptno ;

-- 8
select count(name) from city
where population>100000;

-- 9
select sum(population) from city
where district='california';

-- 10
select countrycode,district, avg(population) from city
group by countrycode , district ;

-- 11
select o.ordernumber , o.status , c.customernumber,c.customername from orders as o inner join
customers as c on o.customernumber=c.customernumber
where o.status = 'disputed';






