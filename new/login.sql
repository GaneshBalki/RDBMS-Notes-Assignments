


drop procedure if exists login;
delimiter $

create procedure login(_username varchar(50),_password varchar(50),_email varchar(50))
BEGIN
     insert into login values(_username,_password,_email);
	 select * from login;
end $
 delimiter ;