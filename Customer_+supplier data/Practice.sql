create database test2;
use test2;
create table customerdata
(customerid int,
 customername varchar(50)
 );
 drop table customerdata;
 create table customerdata
(customerid int,
customernumber int,
Last_name varchar(50),
first_name varchar(50),
area_code int,
address varchar(50),
phone char(10));
select * from customerdata;

insert into customerdata 

values( 001,1,"Biswas","Deborit",53,"Nabapally","7278844280");
select * from customerdata;
insert into customerdata 
(customerid,
customernumber,
Last_name,
first_name,
area_code
)
values ( 2,4, "Mondal","sreeparna",53);
select * from customerdata;
drop table customerdata;
-- Create Table with primary key , auto increament, not null data types.
create table customerdata
(customer_id int auto_increment not null  primary key,
customer_no int not null unique,
last_name varchar(50),
first_name varchar(50),
area_code int,
address varchar(50),
phn_no varchar(12) not null unique);
select * from customerdata;
insert into Customerdata 
values(01,1,'Biswas','deb',23,'asd','7278');
insert into customerdata 
(
customer_no ,
last_name ,
first_name,
area_code,
address,
phn_no)
-- here the auto increament is happening incluidng the number of runtime error. like customer id of the 3rd entry is not 3
-- inserting values
values (
3,'mondal','deb',23,'asd','9051');
select * from customerdata;
update customerdata set
last_name='mkhrje',
phn_no= '8678'
where customer_id=5;
select *from customerdata;
alter table customerdata add price int;
select * from customerdata;
alter table customerdata drop price ;
select * from customerdata;
alter table customerdata modify column phn_no int;
alter table customerdata modify column phn_no varchar(12);
use customer_supplier;
select* from customer;
select* from `order`;
select* from supplier;
select* from product;
create table Copy_order like `order` ;
insert into copy_order select * from `order`;
-- Q2
select firstname,lastname,country from customer
where country= "Sweden";
create table copy_supplier_table like supplier;

-- Q3/4
insert into copy_supplier_table select * from supplier; 
 update copy_supplier_table
 set city ="Sydney" where companyname like "P%";
 select city,companyname from copy_supplier_table
 where companyname like "P%";
 
 -- Q5
 create table copy_products like product; 
 insert into  copy_products select * from product;
 select * from copy_products where unitprice > 50;
 delete from copy_products where unitprice >50;
 
 -- Q6/7
 select Country,Count(id) as customer_count from customer
 group by country 
 order by customer_count DESC ;
 -- Q8
 
select * from `order`;

-- Q9

select country, count(ID) as count_Customer from customer
group by Country having count_customer>10;

-- Q10
select country, count( ID) as customer_count from customer
where country != "USA"
group by Country
having customer_count >9; 
 
 -- Q11
 
 select * from customer
 where firstname like "%ill%" or lastname like "%ill%";
 
 -- Q12
 
 
 
 -- Q13
 
 select companyname, country from supplier
 where country in ("USA", "Japan","GermanY")
 order by country ASC,
 CompanyName DESC;
 
 -- Q 14
 
 -- Q 15
update copy_products set Isdiscontinued = 'True'
where unitprice>25;
Select * from copy_products
where unitprice>25;

-- Q16

Select productname,unitprice from Copy_products
order by unitprice desc
limit 10;
 
 -- Q 17
Select productname,unitprice from Copy_products
order by unitprice desc
limit 9,6;

-- Q19
select country, count( distinct Companyname) as supplier_count from supplier
group by country
order by supplier_count Desc;

-- Q 20

-- Q 21
select * from product
where productname like "Ca%";

-- Q 22
select * from product
where productname like 'Cha_%' or productname like'Chan_%';

-- Q 23
create table Supplier_copy like Supplier;
insert into supplier_copy select * from supplier;
update supplier_copy set fax = "No Fax number"
where fax is null; 
select * from supplier_copy; 
-- Alternate approach Q 23
select CompanyName,fax,  
case 
when fax is null then "No Fax available"
else fax end 
from Supplier; 
 
 
 -- Q 25
 select customer as C;
 Select supplier.country from supplier;
 select firstname,lastname,Customer.country as customer_country,supplier.country as supplier_country,companyname from 
 supplier full join customer on  (customer.country=supplier.country)
 ;
 Select * from supplier;
 --------------------------
 use customer_supplier;
 
 -- Q 27
 
 -- Q 28
 
 select 'customer'type,concat(firstname,lastname) as Contact_name,city,country,phone from Customer
 union 
 select 'supplier'type, contactname,city,country,Phone from supplier;
 
 -- Q29
 
 
 