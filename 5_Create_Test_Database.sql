CREATE DATABASE test;

USE test; 

CREATE TABLE addresses (

	id INT,
    house_number INT,
	city VARCHAR(20),
    postcode VARCHAR(7)
);

CREATE TABLE people (

	id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address_id INT
); 

CREATE TABLE pets (

	id INT,
    name VARCHAR(20),
    species VARCHAR(20), 
    owner_id INT
); 

SHOW TABLES;
/-- Ý 1
ALTER TABLE pets
add primary key(id); 
ALTER TABLE people
add primary key(id); 
/-- Ý 2
alter table pets
add constraint owner
foreign key (owner_id) references people (id); 
/-- Ý 3
alter table people
add email varchar(30);
/-- Ý 4
alter table people
add constraint uniqueemail  unique (email);
/-- Ý 5
alter table pets
change `name` `first_name` varchar(30);
/-- Ý 6
alter table addresses
modify column postcode char(7);
