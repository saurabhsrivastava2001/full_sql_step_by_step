select * from staff;

--drop a column
alter table staff drop column;

--changing the data type of the a column.
alter table staff alter column age type varchar(5);

--varchar to int
ALTER TABLE staff ALTER COLUMN age TYPE integer USING age::integer;

--rename table 
alter table staff rename to staff_renamed;

-- rename the column
alter table staff rename column first_name to full_name;

-- add a constraint to existing column-
alter table staff add constraint unq_stf unique (coulumn_name);

--drop a table 
drop table staff;
