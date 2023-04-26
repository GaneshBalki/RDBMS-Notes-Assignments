drop procedure if exists login2;
delimiter $

create PROCEDURE login2(_email VARCHAR(50))

BEGIN
    if EXISTS(SELECT * from login where email=_email) THEN
	
	SELECT username, password from login where email=_email;
	
	ELSE
	insert into log(curr_date, curr_time,message) values(curdate(),curtime(),'HELlo kuch kam kerlo');
	 select * from log;
	end if; 
end $
delimiter ;