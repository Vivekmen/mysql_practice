#row locking;

SELECT * FROM table_name WHERE id=10 FOR UPDATE;
SELECT * FROM table_name WHERE id=10 LOCK IN SHARE MODE; 

#table locking

lock tables worker read;

unlock tables;

select * from performance_schema.metadata_locks where object_name="worker" and  object_type="table";


select * from bonus;
