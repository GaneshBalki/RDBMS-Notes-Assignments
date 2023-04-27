DROP FUNCTION IF EXISTS F3;

delimiter $
CREATE FUNCTION f3(_email varchar(45)) returns varchar(1500)
DETERMINISTIC
BEGIN
      DECLARE x varchar(1000);
         declare y varchar(46);
	 set x = '';
  
	 set y='Employee NOt Exists';
     if exists(select email from login where email=_email) THEN
	
	set  x = (SELECT CONCAT(' userName = ',username,' Password = ',password) FROM login where email=_email);
	 RETURN x;
	 ELSE
	 
	 RETURN y;
	 end if;
END $
delimiter ;