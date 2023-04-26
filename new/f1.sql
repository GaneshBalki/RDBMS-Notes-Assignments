drop function if exists f1;
delimiter $

CREATE FUNCTION f1( w int) returns int 
BEGIN
     
	 DECLARE x int;
	 set x=w*2+1;
	
	 RETURN x;
END $
delimiter ;