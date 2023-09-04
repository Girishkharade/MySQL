use Project_task;

create table countries (
name varchar (30),
Population int,
Capital varchar (30));

insert into countries (name , population , capital)
values ('China',1382,'Beijing'),
('India',1326,'Delhi'),
('United States',324,'Washington D.C.'),
('Indonesia',260,'Jakarta'),
('Brazil',209,'Brasilia'),
('Pakistan',193,'Islamabad'),
('Nigeria',187,'Abuja'),
('Bangladesh',163,'Dhaka'),
('Russia',143,'Moscow'),
('Mexico',128,'Mexico city'),
('Japan',126,'Tokyo'),
('Philippines',102,'Manila'),
('Ethiopia',101,'Addis Ababa'),
('Vietnam',94,'Hanoi'),
('Egypt',93,'Cairo'),
('Germany',81,'Berlin'),
('Iran',80,'Tehran'),
('Turkey',79,'Ankara'),
('Congo',79,'Kinshasa'),
('France',64,'Paris'),
('United Kingdom',65,'London'),
('Italy',60,'Rome'),
('South Africa',55,'Pretoria'),
('Myanmar',54,'Naypyidaw');

Select * from countries;

insert into countries (name,population,capital)
values ('kenya',42,'Nairobi'),
('Argentina',41,'Buenos Aires'),
('Poland',38,'Warsaw'),
('Algeria',36,'Algiers'),
('Sudan',34,'Khartoum');

set sql_safe_updates=0;
update countries
set capital = 'New Delhi'
Where Capital ='Delhi';

select * from countries;

Alter table countries rename to Big_countries;


create table suppliers(
Supplier_id int primary key ,
supplier_name varchar (50),
Location varchar(100));
desc suppliers;

create table Product(
Product_id int primary key,
Product_name varchar(50) not null unique,
Supplier_id int ,
foreign key (Supplier_id) references suppliers(Supplier_id)
on delete set null
on update cascade);
desc product;

create table stock(
id int primary key,
product_id int,
balance_stock int,
foreign key (product_id) references product(product_id)
on delete set null
on update cascade);
desc stock;

insert into suppliers (supplier_id,supplier_name,location)
values(1,'ExcelR_pune','Pune'),
(2,'ExcelR_baner','Pune'),
(3,'ExcelR_Hyd','Hydrabad');
select * from suppliers;

insert into product(product_id,product_name,supplier_id)
values(1,'Excel',1),
(2,'PowerBI',2),
(3,'Tableau',3);
select * from product;

insert into stock(id,product_id,balance_stock)
values(1,3,10),
(2,1,20),
(3,2,30);
select * from stock;

alter table suppliers modify column supplier_name varchar(30) not null unique;

alter table emp add column deptno int;
select * from emp;
desc emp;
set sql_safe_updates=0;


select * from emp;
update emp
set deptno = 20
where  emp_no%2=0;

update emp
set deptno = 30
where emp_no%3=0;

update emp
set deptno = 40
where emp_no % 4=0;

update emp
set deptno = 50
where emp_no % 5 =0;

update emp
set deptno = 10
where deptno is null;

select * from emp;


alter table emp change column emp_no emp_no int not null unique;
desc emp;

create view emp_sal as select emp_no , first_name, last_name , salary from emp;
select * from emp_sal;

