--------------------------
create table study (id int,name varchar(10),salary int,dept varchar(10)); --for creating table
select * from study; --for all data
select dept from study; --for particular data

----insert data (method 1)
select* from study;
insert into study values(101,'Amit',40000,'ENTC');
insert into study values (101,'Amit',40000);
---------
insert into study values (102,'Puja',50000,'it');
insert into study values (106,'Amit',40000,'ENTC');
insert into study values (103,'Poonam',70000,'ENTC');
insert into study values (104,'Aman',40000,'Civil');
insert into study values (105,'Namrata',60000,'Mech');

insert into study values (101,'Amit',40000,' ');
insert into study values ('','Amit',40000,'ENTC');
insert into study values (107,'Amit',40000,null);
insert into study values (null,'Amit',40000,'ENTC');

--method 2...when 5 time values not now
insert into study (id,salary) values(200,30000);
insert into study (name) values ('amit');
insert into study (dep) values ('Civil');

select* from study where name like '_A%'
select* from study where id ='101';
select* from study where id =102 and name='Amit' or salary !=40000;
select* from study where id in (101,102,103);
select* from study  where name in ('it');
select * from study where id not in (101,102);
select * from study where id between 101and 103;
select * from study where id not between 101 and 105;
select * from study where name like 'A%';
select* from study  order by salary;
select* from study order by salary desc;
-------------------------------------
update study set salary=50000 where id=102;
select * from study;
update study set salary=30000 where id=101;
update study set name= 'rupali' where id=200;
update study set dep='dental' where id=200;
update study set name='indra',dep='bca' where id=103;
update study set name='patil',dep='mca',salary=50000 where id=107;
select upper (name ) from study;
update study set salary=35000 where name='indra';
update study set adress='mumbai' where id=105;
update study set adress='delhi' where id in(0,103,104);
-----------------------
add column
--alter
alter table study add adress varchar (20);