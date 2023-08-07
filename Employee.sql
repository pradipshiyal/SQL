-- Creating EMPLOYEE TABLE
    CREATE TABLE EMPLOYEE
    (
        EID NUMBER(2),
        ENAME VARCHAR(20),
        EJOB VARCHAR(15),
        ESALARY NUMBER(7,2)  
    );

-- Inserting Records
    INSERT INTO EMPLOYEE VALUES(1,'Ramesh','ClerK',1200);
    INSERT INTO EMPLOYEE VALUES(2,'Jayesh','ClerK',3200);
    INSERT INTO EMPLOYEE VALUES(3,'Nimesh','Analyst',5200);
    INSERT INTO EMPLOYEE VALUES(4,'Rakesh','Clerk',200);
    INSERT INTO EMPLOYEE VALUES(5,'Manan','Clerk',100);
    INSERT INTO EMPLOYEE VALUES(6,'Raman','Analyst',1100);
    INSERT INTO EMPLOYEE VALUES(7,'Mahesh','Superviser',1500);

-- Displaying All Records
    SELECT * FROM EMPLOYEE;

-- Just Select That Records Whose EJOB Is CLERK
    SELECT * FROM EMPLOYEE WHERE EJOB='Clerk';

-- Select That Records Whose Ejob Is Either Clerk Or Analyst
    SELECT * FROM EMPLOYEE WHERE EJOB='Clerk' OR EJOB='Analyst'; 
    SELECT * FROM EMPLOYEE WHERE EJOB='Analyst' OR EJOB='Clerk'; 