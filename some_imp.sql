SELECT table_schema, table_name 
FROM information_schema.tables 
WHERE table_type = 'BASE TABLE';

select * from staff;

//this is how we can see all the constraints of a db

SELECT constraint_name, table_name, constraint_type 
FROM information_schema.table_constraints 
WHERE table_schema = 'public';