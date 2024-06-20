-- transaction

-- A transaction in MySQL is a sequential group of statements, queries, or operations such as select, insert, update or delete to perform as a one single work unit that can be committed or rolled back.
SET autocommit = 0;  
-- OR,  
-- SET autocommit = OFF:  

-- SET autocommit = 1;  
-- OR,  
-- SET autocommit = ON: 

-- START TRANSACTION; 

-- SELECT @income:= MAX(salary) FROM worker;  

-- INSERT INTO worker(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT)   
-- VALUES (009, 'Alexander', 'alex', '300000', '2021-2-2','HR');  

-- INSERT INTO title(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)   
-- VALUES (009, 'manager',now());  

-- COMMIT;  


-- 1. Start a new transaction  
START TRANSACTION;  
-- 2. Delete data from the order table  
SET SQL_SAFE_UPDATES = 0;
DELETE FROM title;  

-- SELECT * FROM title;
rollback;

select * from title
-- SET autocommit=0;
-- CREATE TABLE EMPLOYEE(
--    FIRST_NAME CHAR(20) NOT NULL,
--    LAST_NAME CHAR(20),
--    AGE INT,
--    SEX CHAR(1));

-- COMMIT;

-- INSERT INTO EMPLOYEE VALUES
-- ('Krishna', 'Sharma', 19, 'M'),
-- ('Raj', 'Kandukuri', 20, 'M'),
-- ('Ramya', 'Ramapriya', 25, 'F'),
-- ('Mac', 'Mohan', 26, 'M'); 
-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE EMPLOYEE SET AGE = AGE + 1;

-- select * from EMPLOYEE;

-- ROLLBACK;

-- SELECT * FROM EMPLOYEE;
--          commit  ;                                              
-- START TRANSACTION;

-- SELECT * FROM worker;

-- INSERT INTO worker(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT)   
-- VALUES (11, 'Geetikas', 'Chauhans', 90001, '14-04-11 08.00.00', 'Admin');  

-- SAVEPOINT savep1;

-- INSERT INTO worker(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT)   
-- VALUES (12, 'eetikas', 'hauhans', 90002, '14-04-11 08.00.00', 'Admin1');  

-- ROLLBACK TO SAVEPOINT savep1; 
-- INSERT INTO worker(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT)   
--  VALUES (13, 'weetikas', 'hauhans', 90003, '14-04-11 08.00.00', 'Admin2');

-- commit

-------------------------------------
-- select * from worker;

-- SELECT *,   
--     ROW_NUMBER() OVER(order by salary desc) AS row_num  
-- FROM worker; 

-- select * from worker where worker_id in(select worker_id from worker) 

show engines

-- CREATE TABLE employee (  
--     emp_id BINARY(16) PRIMARY KEY,  
--     name VARCHAR(255)  
-- );  

-- INSERT INTO employee (emp_id, name)  
-- VALUES (UUID_TO_BIN(UUID()),'John Doe'),  
--       (UUID_TO_BIN(UUID()),'Johnny Dope'),  
--       (UUID_TO_BIN(UUID()),'Jason Gillespie');  
--       
-- select emp_id from employee where name="john Doe"


-- INSERT IGNORE INTO worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT)   
--  VALUES (14, 'weetikas', 'hauhans', 90003, '14-04-11 08.00.00', 'Admin2') 
--  on duplicate  key update worker_id=15

-- select * from worker


