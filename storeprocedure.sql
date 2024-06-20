-- CREATE DATABASE SampleDB;
-- USE SampleDB;

-- CREATE TABLE Customers (
--     CustomerID INT PRIMARY KEY,
--     CustomerName VARCHAR(50),
--     ContactName VARCHAR(50),
--     Country VARCHAR(50)
-- );

-- INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
-- VALUES (1, 'Shubham', 'Thakur', 'India'),
--        (2, 'Aman ', 'Chopra', 'Australia'),
--        (3, 'Naveen', 'Tulasi', 'Sri lanka'),
--        (4, 'Aditya', 'Arpan', 'Austria'),
--        (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain');


-- DELIMITER //
-- CREATE PROCEDURE GetCustomersByCountry (IN countr varchar(50),out count int)
-- BEGIN

-- SELECT * FROM Customers WHERE Country = countr;
--     
-- SELECT COUNT(*) INTO count FROM Customers;
-- END//

-- DELIMITER ;

-- select * from customers where Country="india";
-- set @count=0;
-- CALL SampleDB.GetCustomersByCountry('india',@count);

-- select @count;
-- drop procedure GetCustomersByCountry;

-- use org

-- DELIMITER //
-- CREATE PROCEDURE Get_emp_salary (inout salar int)
-- BEGIN
-- SELECT salary into salar FROM worker;
--     
-- END//

-- DELIMITER ;

-- set @salar=500000;
-- call org.Get_emp_salary(@salar);
-- select @salar;

-- drop procedure Get_emp_salary;

#multiple query in store procedure
-- DELIMITER // 

-- CREATE PROCEDURE GET_EMP_DETAILS (IN NAME VARCHAR(50),IN LNAME VARCHAR(50))
-- BEGIN
-- DECLARE nameF VARCHAR(50);
-- SELECT first_name into nameF FROM WORKER WHERE FIRST_NAME=NAME AND LAST_NAME=LNAME;
-- select * from worker where first_name=nameF;

-- END//

-- DELIMITER ;

-- CALL ORG.GET_EMP_DETAILS("VIVEK","BHATI");

-- DROP PROCEDURE GET_EMP_DETAILS;


#loop in store procedure

-- DELIMITER $$  
-- CREATE PROCEDURE ABC()

--    BEGIN
--       DECLARE a INT Default 0 ;
--       simple_loop: LOOP
--          SET a=a+1;
--          select a;
--          IF a=5 THEN
--             LEAVE simple_loop;
--          END IF;
--    END LOOP simple_loop;
-- END $$


-- call org.ABC();



