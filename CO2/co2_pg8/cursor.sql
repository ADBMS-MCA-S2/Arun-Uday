CREATE DEFINER=`root`@`localhost` PROCEDURE `book_details`()
BEGIN
declare book_shelf int;
declare bookname varchar(20);
declare book_category varchar(10);
declare C_finished integer default 0;
declare C1 cursor for select shelf_no,category,book_name from library;
declare continue handler for not found set C_finished = 1;
open C1;
book_details:loop
if C_finished=1 then
leave book_details;
end if;
if C_finished = 0 then
Fetch from C1 into book_shelf,book_category,bookname;
if book_category = 'OR' then
insert into book_by_order values(book_shelf,bookname,book_category);
end if;
end if;
end loop;
close C1;
END