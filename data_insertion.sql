-- inserting values in customer table
insert into customer values
(1, 'sarvesh thakur', '9876543210', 'sarvesh@example.com', '2024-01-10'),
(2, 'Jay patil', '8765432109', 'jay@example.com', '2024-02-15'),
(3, 'aradhya zalte', '7654321098', 'aradhya@example.com', '2024-03-01'),
(4, 'manish gulekar', '6543210987', 'manish@example.com', '2024-04-05');

select * from customer;

-- insert values into a Drivers table
insert into driver values
(1, 'raj gunjal', '9123456789', 'DL12345678', '2023-09-01', 4.5),
(2, 'sidhharth patil', '9234567890', 'DL87654321', '2023-10-12', 3.2),
(3, 'anshul Pawar', '9345678901', 'DL23456789', '2024-01-20', 2.8),
(4, 'rahul gunjal', '9456789012', 'DL34567890', '2024-03-15', 4.0);

select * from Driver;

-- inserting values into a cabs table
insert into cabs values
(1, 1, 'Sedan', 'KA01AB1234'),
(2, 2, 'SUV', 'KA01CD5678'),
(3, 3, 'Sedan', 'KA01EF9012'),
(4, 4, 'SUV', 'KA01GH3456');

select * from cabs;

-- inserting values in booking table
insert into booking values
(101, 1, 1, '2025-05-01 08:00:00', '2025-05-01 08:10:00', '2025-05-01 08:40:00', 'Downtown', 'Airport', 'Completed'),
(102, 2, 2, '2025-05-01 09:00:00', NULL, NULL, 'Station', 'Mall', 'Cancelled'),
(103, 1, 3, '2025-05-02 10:00:00', '2025-05-02 10:15:00', '2025-05-02 10:50:00', 'Downtown', 'Hospital', 'Completed'),
(104, 3, 4, '2025-05-03 11:30:00', '2025-05-03 11:45:00', '2025-05-03 12:30:00', 'Mall', 'University', 'Completed'),
(105, 4, 1, '2025-05-04 14:00:00', NULL, NULL, 'Airport', 'Downtown', 'Cancelled');

select * from booking;

-- inserting into trip_details 
insert into trip_details values
(1001, 101, 12.5, 250.00, 5.0),
(1002, 103, 10.0, 200.00, 4.0),
(1003, 104, 15.0, 300.00, 3.5);

select * from trip_details;

-- inserting value into feedback
insert into feedback values
(501, 102, 'Cab was late, had to cancel.', 'Driver Delay'),
(502, 105, 'Change of plans.', 'Customer Personal Reason');

select * from feedback;