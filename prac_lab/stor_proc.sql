CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_Grade`(id int,stu_name varchar(20),mark int)
BEGIN
	if(mark<=1500 AND mark>=990)
    then
    insert into proc_student values(id,stu_name,mark,"distinction");
    end if;
    if(mark<=989 AND mark>=900)
    then
    insert into proc_student values(id,stu_name,mark,"first class");
    end if;
    if(mark<=899 AND mark>=825)
    then
    insert into proc_student values(id,stu_name,mark,"second class");
    end if;
    if(mark<824)
    then
    insert into proc_student values(id,stu_name,mark,"third class");
    end if;
END