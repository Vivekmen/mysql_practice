select @@transaction_isolation; 
select @@global.transaction_isolation;

-- Now to change the isolation level of current session, we can use this query:
select * from worker;
SET SESSION TRANSACTION isolation level READ committed;

#lowest isolation level
SET SESSION TRANSACTION isolation level READ uncommitted;

set session transaction isolation level repeatable read;

set session transaction isolation level serializable;


# Tx1 begin at t0, updated the quantity in row 1 and is not committed yet. Tx2 begin, read the changes made by Tx1 and Tx1 is rolled back. 
#Tx2 returned 12000 which would have been correct if Tx1 was committed but it led to inconsistent result since Tx1 was rolled back. 
#If we were to run Tx2 again, it will return different value i.e 8000.