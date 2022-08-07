-- Insert data into car table

INSERT INTO car (
	car_id,
	car_make,
	car_model,
	car_color,
	car_year
) VALUES (
	1,
	'Toyota',
	'RAV 4',
	'Silver',
	'2012'
);

INSERT INTO car (
	car_id,
	car_make,
	car_model,
	car_color,
	car_year
) VALUES (
	2,
	'Honda',
	'Civic',
	'Blue',
	'2014'
);

-- Show the above data has been entered into the car table
SELECT * FROM car;

-- Insert data into the customer table

INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	phone_num,
	billing_info
) VALUES (
	12,
	'Maddy',
	'James',
	'342-232-5323',
	'3434-2323-5432-6392 238 05/23'
);

INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	phone_num,
	billing_info
) VALUES (
	53,
	'John',
	'Lyman',
	'342-642-8943',
	'3904-3483-3432-3432 343 09/29'
);

-- Show that the above data was entered into the customer table
SELECT * FROM customer;


-- Insert data into the salesperson table

INSERT INTO salesperson (
	staff_id,
	first_name,
	last_name
) VALUES (
	122,
	'Adam',
	'Joseph'
);

INSERT INTO salesperson (
	staff_id,
	first_name,
	last_name
) VALUES (
	143,
	'Maria',
	'Monroe'
);

-- Show that the above data was entered into the salesperson table
SELECT * FROM salesperson;


-- Create a stored function to insert data into the mechanic table

CREATE OR REPLACE FUNCTION add_mechanic(_mechanic_id INTEGER, _first_name VARCHAR(150), _last_name VARCHAR(150))
RETURNS void
AS $MAIN$
BEGIN 
	INSERT INTO mechanic(mechanic_id, first_name, last_name)
	VALUES(_mechanic_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_mechanic(232, 'Steve', 'Bearhart');
SELECT add_mechanic(421, 'Sara', 'Stevenson');

-- Show that the above data was entered into the mechanic table
SELECT * FROM mechanic;


-- Create a stored function to insert data into the parts table

CREATE OR REPLACE FUNCTION add_part(_parts_id INTEGER, _part_name VARCHAR(150))
RETURNS void
AS $MAIN$
BEGIN 
	INSERT INTO parts(parts_id, part_name)
	VALUES(_parts_id, _part_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_part(3892, 'Radiator');
SELECT add_part(3489, 'Sensor');

-- Show that the above data was entered into the parts table
SELECT * FROM parts;


-- Insert data into the services table

INSERT INTO services (
	service_ticket_id,
	service_cost,
	car_id,
	mechanic_id,
	parts_id
) VALUES (
	1, 
	355.99,
	1,
	232,
	3892
);

INSERT INTO services (
	service_ticket_id,
	service_cost,
	car_id,
	mechanic_id,
	parts_id
) VALUES (
	2, 
	499.99,
	2,
	421,
	3489
);

-- Show that the above data was entered into the services table

SELECT * FROM services;


-- Insert data into the invoice table

INSERT INTO invoice (
	invoice_id,
	amount,
	car_id,
	service_ticket_id,
	staff_id,
	customer_id
) VALUES (
	123,
	1000.00,
	1,
	1,
	122,
	12
);

INSERT INTO invoice (
	invoice_id,
	amount,
	car_id,
	service_ticket_id,
	staff_id,
	customer_id
) VALUES (
	347,
	12000.00,
	2,
	2,
	122,
	53
);

-- Show that the above data was inserted into the invoice table

SELECT * FROM invoice;

