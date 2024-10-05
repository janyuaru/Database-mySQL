
create database janyuaru;
use janyuaru;
show tables;
create table persons (
 Person_id char(3) not null,
 RateHour int(2) default null,
 Person_name varchar(100) default null,
 address varchar(100) default null,
 BirthDate date default null,
 Primary key (Person_id)) 
 ;
show tables;
describe persons;
insert into persons (Person_id, RateHour, Person_name, address, BirthDate) values
('002',10,'นัชชา สีกัน','ท่าศาลา','1975-01-03');

insert into persons values ('001',10,'นัชชา สีกัน','ท่าศาลา','1975-01-03');
insert into persons values ('003',10,'นัชชา สีกัน','ท่าศาลา','1975-01-03');
select * from persons;
select * from persons where Person_id = '001';
update persons set Person_name = 'เบญจมาศ แสนสวยงาม' where Person_id = '001';
delete from persons where Person_id = '001';
select * from persons;


