create database collegel;
use collegel;
drop table library;
drop table book_by_order;
create table library(shelf_no int,category varchar(10),book_name varchar(20));
insert into library values(101,'Topology','Real Analysis');
insert into library values(102,'Algebra','Linear Algebra');
insert into library values(103,'Analysis','Complex Analysis');
insert into library values(104,'OR','Operations Research');
insert into library values(106,'NumberSys','AbstractAlg');

create table book_by_order(book_shelf int,book_category varchar(20),bookname varchar(20));
select * from book_by_order;

call book_details();