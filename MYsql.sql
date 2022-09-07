CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
INSERT INTO Persons VALUES                          
    (1,' Hansen ', ' Ola ', ' Street23', ' Hyderabad '),                                                                	
    (2,' John ','Tove', ' Street20' , ' Hyderabad '),
    (3,' Pettersen ',' Tove1 ', ' Street10', ' Hyderabad '),
    (4,'Rafkin',' Kari ', ' Street32', ' Hyderabad '); 

CREATE TABLE Orders 
(
O_Id int, 
OrderNo int,
P_Id int);


INSERT INTO Orders  VALUES  
(1,77895,3),
(2,44678,3),
(3,22456,1),
(4,24562,1),
(5,34764,15);

UPDATE Persons 
SET FirstName='Ola', City= 'Chennai'
WHERE PersonID=1;

ALTER TABLE Persons
ADD DateOfBirth date ;

ALTER TABLE Persons 
DROP COLUMN DateOfBirth ;

SELECT * FROM Persons WHERE City='Hyderabad';
SELECT * FROM Persons WHERE FirstName='Tove' AND LastName='John';
SELECT * FROM Persons WHERE LastName='John' AND (FirstName='Tove' OR FirstName='Ola');
SELECT * FROM Persons WHERE FirstName LIKE '_la';

SELECT * FROM Persons WHERE LastName LIKE '[bsp]%' ;

SELECT * FROM Persons 
WHERE LastName 
BETWEEN 'Hansen' AND 'Pettersen' ;

SELECT * FROM Persons 
WHERE LastName 
NOT BETWEEN 'Hansen' AND 'Pettersen' ;

CREATE DATABASE  Statement1;
SELECT * 
INTO Persons_Backup
FROM Persons;
SELECT LastName,FirstName 
INTO Persons_Backup 
FROM Persons ;
SELECT LastName,Firstname 
INTO Persons_Backup 
FROM Persons 
WHERE City='Hyderabad';

CREATE TABLE Person1 
( 
P_Id int NOT NULL, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255),
Address varchar(255), 
City varchar(255) );

INSERT INTO Person1 VALUES                          
    (1,' Hansen ', ' Ola ', ' Street23', ' Hyderabad '),                                                                	
    (2,' John ','Tove', ' Street20' , ' Hyderabad '),
    (3,' Pettersen ',' Tove1 ', ' Street10', ' Hyderabad '),
    (4,'Rafkin',' Kari ', ' Street32', ' Hyderabad ');
    
CREATE TABLE Person2  #using UNIQ constains
(
P_Id int NOT NULL UNIQUE, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255), 
Address varchar(255), 
City varchar(255) 
)  ;  

CREATE TABLE Person3 
(
P_Id int NOT NULL, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255), 
Address varchar(255), 
City varchar(255), 
CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName) 
);

ALTER TABLE Person2 
ADD UNIQUE (P_Id);
ALTER TABLE Person2 
ADD CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName);
ALTER TABLE Person2
DROP CONSTRAINT uc_PersonID;

CREATE TABLE Persons1 
(
P_Id int NOT NULL PRIMARY KEY, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255), 
Address varchar(255), 
City varchar(255) 
);

#SQL PRIMARY KEY Constraint on ALTER TABLE 
ALTER TABLE Persons1 
ADD PRIMARY KEY (P_Id); 
ALTER TABLE Persons1 
ADD CONSTRAINT pk_PersonID PRIMARY KEY (P_Id,LastName);

##To DROP a PRIMARY KEY Constraint
ALTER TABLE Persons1 
DROP PRIMARY KEY ;
ALTER TABLE Persons1
DROP CONSTRAINT pk_PersonID;


CREATE TABLE Orders1 
(
O_Id int NOT NULL, 
OrderNo int NOT NULL, 
P_Id int, 
PRIMARY KEY (O_Id), 
CONSTRAINT fk_PerOrders FOREIGN KEY (P_Id)
REFERENCES  Persons1(P_Id) 
);	

ALTER TABLE Orders
ADD FOREIGN KEY (P_Id) 
REFERENCES Person1(P_Id);

ALTER TABLE Orders 
ADD CONSTRAINT fk_PerOrders 
FOREIGN KEY (P_Id) 
REFERENCES Persons(P_Id);
CREATE TABLE Persons5 
( 
P_Id int NOT NULL, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255), 
Address varchar(255), 
City varchar(255) DEFAULT 'Hyderabad' ); 

CREATE TABLE Orders1 
( 
O_Id int NOT NULL, 
OrderNo int NOT NULL, 
P_Id int);

CREATE TABLE Student (
    S_ID int,
    S_Name varchar(255),
    Salary varchar(255)
);

INSERT INTO Student  VALUES  
(1,'A',80),
(2,'B',40),
(3,'C',60),
(4,'D',70),
(5,'E',60),   
(6,'F','Null');

SELECT
    COUNT(*) product_count
FROM
    Student;
    
    SELECT
    AVG(Salary) avg_Student_Salary
FROM
    Student;
    SELECT
    MAX(Salary) max_Student_Salary
FROM
    Student;
    
     SELECT
    MIN(Salary) max_Student_Salary
FROM
    Student;
    
SELECT 
    S_ID, 
    SUM(Salary) Salary
FROM 
    Student
GROUP BY
    S_ID;









