  create table customer
  (
	customer_id int8 primary key,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(50),
	address_id int8
  );

  select * from customer

  --importing csv file in the db

  copy customer(customer_id,first_name,last_name,email,address_id)
  from 'D:\Downloads\customer.csv'
  delimiter ','
  csv header;


  --importing manually 

  create table payment
  (
	customer_id int8 primary key,
	amount int8 not null,
	mode varchar(50),
	payment_date date
  );

  select * from payment