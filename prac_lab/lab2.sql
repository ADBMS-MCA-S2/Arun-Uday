create database sp;
use sp;
create table proc_student(id int,stu_name varchar(20),mark int,category varchar(20));
drop table proc_student;
call proc_Grade(101,'Abhi',900);
call proc_Grade(102,'Akhil',1300);
call proc_Grade(103,'Aswin',987);
call proc_Grade(104,'Binu',834);
call proc_Grade(105,'Nimal',900);
select * from proc_student;