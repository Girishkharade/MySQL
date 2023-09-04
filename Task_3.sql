use Project_task;
-- 1
call order_status(2003,2);

-- 2.a.
call purchase_status(112);

-- 2.b.
call purchase_info(103);
call purchase_info(112);

-- 3
select * from movies;
set sql_safe_updates=0;
update movies
set id=11
where id=10;
select * from rentals;


-- 4
select fname from employee
order by salary desc
limit 2,1;

-- 5
select *,
rank() over(order by salary desc) as 'rank' 
from employee
order by salary desc ;


