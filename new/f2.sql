drop function if exists f2;
delimiter $

create function f2(x int,y int) returns int
DETERMINISTIC
BEGIN
DECLARE z int;

RETURN ifnull(x,0) + ifnull(y,0);
end $
delimiter ;