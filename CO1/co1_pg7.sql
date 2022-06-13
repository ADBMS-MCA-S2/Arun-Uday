create database tcl;

create table dept(deptno varchar(20) not null,dname varchar(20) not null,loc varchar(20) not null,primary key(deptno));

insert into dept values("d001","finance","kollam");

insert into dept values("d002","it","ernakulam");

insert into dept values("d003","management","thrissur");

set autocommit=0;

insert into dept values("d004","it","kozhikode");

savepoint b;

select *from dept;

insert into dept values("d005","finance","kozhikode");

savepoint c;

insert into dept values("d006","finance","malappuram");

savepoint d;

rollback to d;

commit;