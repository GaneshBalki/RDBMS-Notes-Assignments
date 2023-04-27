drop function if exists sumSalary;
delimiter $

create function sumSalary(_deptno int) returns INTEGER

DETERMINISTIC
BEGIN
     DECLARE s int;
	 set s = (select sum(sal) from emp where deptno = _deptno);
	 
	 RETURN s;
end $
delimiter ;