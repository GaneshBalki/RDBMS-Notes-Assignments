drop procedure if exists addStudent;
delimiter $
create procedure addStudent(name varchar(40),number int,address varchar(60))
BEGIN
     insert INTO students VALUES(name);
	 INSERT INTO phone VALUES(number);
	 INSERT INTO addr VALUES(address);
end $
delimiter ;