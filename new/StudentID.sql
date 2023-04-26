drop procedure if exists sID;
delimiter $
create PROCEDURE sID(in eid int)
BEGIN
    if EXISTS(SELECT id from student where id = eID) THEN
	 select * from student inner join  student_qualifications on student.id= student_qualifications.studentID
	 where student.id=eid;
     
	ELSE
	select 'Student not found…';
	end if;
end $
delimiter ;