-- 1
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_status`(x int,y int )
BEGIN
select ordernumber, orderdate,status 
from orders
where year(orderdate)=x and month(orderdate)=y;

END


-- 2a
CREATE DEFINER=`root`@`localhost` PROCEDURE `purchase_info`(x int)
BEGIN
select customernumber,customername from customers
where customernumber=x;
call purchase_status(x);
END

-- 2b
CREATE DEFINER=`root`@`localhost` PROCEDURE `purchase_status`(x int)
BEGIN
if (select sum(amount) from payments where customernumber=x)<25000 then
	select 'Silver' as Status;
elseif (select sum(amount) from payments where customernumber=x) between 25000 and 50000 then
	select 'Gold' as Status;
else 
	select 'Platinum' as Status;
end if;
END

-- 3
CREATE DEFINER=`root`@`localhost` TRIGGER `trg_movies_update` AFTER UPDATE ON `movies` FOR EACH ROW BEGIN
update rentals
set movieid=new.id
where movieid=old.id;
END


-- 3
CREATE DEFINER=`root`@`localhost` TRIGGER `trg_movie_delete` AFTER DELETE ON `movies` FOR EACH ROW begin
delete from rentals
where movieid 
not in (select distinct id from movies);
end