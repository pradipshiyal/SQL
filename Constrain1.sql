-- Constrain In Oracle
CREATE TABLE STUD16 --Parent Table
(
    SID NUMBER(3) PRIMARY KEY,
    NAME VARCHAR(10) NOT NULL,
    CITY VARCHAR(12)
);

CREATE TABLE FEES -- Child Table
(
    SID NUMBER(3) REFERENCES STUD16,
    AMOUNT NUMBER(7,2),
    FDATE DATE,
    TNO NUMBER(3) UNIQUE
);

-- Inserting Data In Parent Table
INSERT INTO STUD16 VALUES(1,'Rajesh','Mahuva');
INSERT INTO STUD16 VALUES(2,'Ramesh','Rajula');
INSERT INTO STUD16 VALUES(3,'Rakesh','Mahuva');

-- Viewing Records
SELECT * FROM STUD16;

-- Inserting Record Into Child Table
INSERT INTO FEES VALUES(1,1200,'1-JAN-2021',1);
