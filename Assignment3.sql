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

-- Insert 10 Records As Per Below 
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

-- Showing All Records
    SELECT * FROM STUDENT16;

-- Tasks:-

-- 1) Select All Records Of That Students Whose have Marks More Than 250 
    SELECT * FROM STUDENT16 WHERE MARKS>250;

-- 2) Get Name,RollNo,Marks And Gender From User
    INSERT INTO STUDENT16 VALUES(11,'&SNAME',&SROLLNO,NULL,&MARKS,'&GENDER');

-- 3) UPDATE The ROLLNO With 45 Where SID Is 7;
    UPDATE STUDENT16 SET SROLLNO=45 WHERE SID=7;

-- 4) Show All Records Of Those Student Whose Marks Is Grater Than 300 But Not Is Femals
    SELECT * FROM STUDENT16 WHERE MARKS>300 AND GENDER!='F';

-- 5) Add Surat City Of That Student Whose Student Id Is 11
    UPDATE STUDENT16 SET SCITY='Surat' WHERE SID=11;

-- 6) Rename The SNMAE To SNAME
    ALTER TABLE STUDENT16 RENAME COLUMN SNMAE TO SNAME;

-- 7) Sort All The Records In Ascending Order
    SELECT * FROM STUDENT16 ORDER BY SNAME;

-- 8) Count How Many Students Are Avialable Whose Gender Is MALE
    SELECT COUNT(*) FROM STUDENT16 WHERE GENDER='M';

-- 9) Increse The 45 Marks Of That Students Whose Have ROLLNO 16,90,45
    UPDATE STUDENT16 SET MARKS = MARKS + 45 WHERE SROLLNO IN(16,90,45); 

-- 10) Show That All Student Whose Is Lived In RAJKOT And It's Marks Is Less That 300
    SELECT * FROM STUDENT16 WHERE SCITY='Rajkot' AND MARKS<300;
