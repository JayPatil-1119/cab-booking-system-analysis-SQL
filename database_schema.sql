create database project;
use project;

-- creating a customer table
create table customer(
cust_id int primary key,
cust_name varchar(255),
cust_phone varchar(10),
cust_email varchar(50),
join_date date);

-- Drivers
create table driver(
driver_id int primary key,
driver_name varchar(50),
driver_phone_no varchar(10),
driver_licens_no varchar(50),
join_date date,
driver_rating float);

-- creating a cab table
Create table cabs(
cab_id INT PRIMARY KEY,
driver_id INT,
cabtype VARCHAR(20), -- 'Sedan', 'SUV', etc.
plate_number VARCHAR(20),
FOREIGN KEY (driver_id) REFERENCES driver(driver_id));

-- creating a booking table
create table booking(
booking_id int primary key,
cust_id int,
cab_id int,
booking_time datetime,
trip_start_time datetime,
trip_end_time datetime,
pickup_location varchar(50),
dropoff_location varchar(50),
status varchar(20), -- 'Completed', 'Cancelled', 'Ongoing');
foreign key (cust_id) references customer(cust_id),
foreign key (cab_id) references cabs(cab_id));

-- creating table of trip details
create table trip_details(
trip_id int primary key,
booking_id int,
distance float, -- in kilometers
fare decimal(10,2),
driver_rating float,
foreign key (booking_id) references booking(booking_id));

-- creating a feedback table
create table feedback(
feedback_id int primary key,
booking_id int,
customer_feedback text,
reason_for_cancellation varchar(100),
foreign key (booking_id) references booking(booking_id));

