-- Create Table STUDENT16 
    CREATE TABLE STUDENT16
    (
        SID NUMBER(3) CONSTRAINT S_ID UNIQUE,
        SNMAE VARCHAR(23),
        SROLLNO NUMBER(3),
        SCITY VARCHAR(24),
        MARKS NUMBER(3),
        GENDER CHAR(2)
    );

-- Insert 10 Records As Follows
    INSERT INTO STUDENT16 VALUES(1,'Manan',16,'Rajkot',239,'M');
    INSERT INTO STUDENT16 VALUES(2,'Riya',26,'Ahmedabad',129,'F');
    INSERT INTO STUDENT16 VALUES(3,'Aditya',1,'Surat',339,'M');
    INSERT INTO STUDENT16 VALUES(4,'Albert',6,'Junagadh',230,'M');
    INSERT INTO STUDENT16 VALUES(5,'Daksha',90,'Palanpur',239,'F');
    INSERT INTO STUDENT16 VALUES(6,'Ishaan',34,'Palanpur',239,'M');
    INSERT INTO STUDENT16 VALUES(7,'Dhruv',26,'Rajkot',129,'M');
    INSERT INTO STUDENT16 VALUES(8,'Vihaan',46,'Morvi',239,'M');
    INSERT INTO STUDENT16 VALUES(9,'Anika',9,'Morvi',339,'F');
    INSERT INTO STUDENT16 VALUES(10,'Arjun',60,'Rajkot',239,'M');

-- Show All Records
    SELECT * FROM STUDENT16;

-- Tasks:-

-- 1) Show Records Of Students Whose Marks Are More Than 250
    SELECT * FROM STUDENT16 WHERE MARKS>250;

-- 2) Input Name, RollNo, Marks And Caste From The User.
    INSERT INTO STUDENT16 VALUES(11,'&SNAME',&SROLLNO,NULL,&MARKS,'&GENDER');

-- 3) UPDATE The ROLLNO With 45 Where SID Is 7;
    UPDATE STUDENT16 SET SROLLNO=45 WHERE SID=7;

-- 4) Show Records Of Students Whose Marks Are More Than 300 But Caste Should Not Be Female
    SELECT * FROM STUDENT16 WHERE MARKS>300 AND GENDER!='F';

-- 5) Update The City Surat Of The Student Whose SID Is 11
    UPDATE STUDENT16 SET SCITY='Surat' WHERE SID=11;

-- 6) Rename The SNMAE To SNAME
    ALTER TABLE STUDENT16 RENAME COLUMN SNMAE TO SNAME;

-- 7) Sort And Show All Records In Ascending Order
    SELECT * FROM STUDENT16 ORDER BY SNAME;

-- 8) Count The Students Whose Caste Is Male
    SELECT COUNT(*) FROM STUDENT16 WHERE GENDER='M';

-- 9) Add 45 Marks To The Marks Of Students Whose RollNo Are 16, 90 And 45
    UPDATE STUDENT16 SET MARKS = MARKS + 45 WHERE SROLLNO IN(16,90,45); 

-- 10) Show The Records Of Students Who Live In Rajkot But Have Marks Less Than 300
    SELECT * FROM STUDENT16 WHERE SCITY='Rajkot' AND MARKS<300;
