drop procedure if exists addQualification;
delimiter $
CREATE PROCEDURE addQualification(_id int,_studentID int,_name VARCHAR(40),_collage VARCHAR(50),_university varchar(50),_marks int,_year int)

BEGIN
     if EXISTS(select ID from student where ID = _studentID) THEN
	 INSERT into student_qualifications values(_id,_studentID,_name,_collage,_university,_marks,_year);
	 select "Records Inserted !!";
	 select * from student where ID = _studentID;
	 ELSE
	 SELECT  'Student not found';
	 end if;
end $
delimiter ;

