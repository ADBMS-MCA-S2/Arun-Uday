use book;
create table book(book_name varchar(20),author_name varchar(20),price int,quantity int);
insert into book values('harry','Arun',430,6);
insert into book values('Pyari','Stanlee',580,5);
insert into book values('Loki','Stanlee',300,2);
insert into book values('Potte','AAA',900,6);
insert into book values('database for dummies','dummie',369,7);
truncate book;
select * from book;
SET SQL_SAFE_UPDATES = 0;
update book set quantity=quantity*2;
select book_name from book where price>(select price from book where book_name="database for dummies");
select author_name,book_name,price from book where author_name like 'a%';
call total('Stanlee');