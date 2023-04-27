drop table if exists STUDENT_NEW;
CREATE table STUDENT_NEW(studentID INTEGER auto_increment, namefirst varchar(40), namelast varchar(40), DOB date,emailID VARCHAR(50),PRIMARY KEY(studentID));



drop FUNCTION if EXISTS autoNumber;
delimiter $
CREATE FUNCTION autoNumber() returns int
DETERMINISTIC
BEGIN
     DECLARE newID int;
     INSERT INTO STUDENT_NEW (namefirst, namelast, DOB, emailID) VALUES ('', '', NOW(), '');
     SET newID=(SELECT MAX(STUDENTID) FROM STUDENT_NEW);
	 RETURN newID;
END $
delimiter ;