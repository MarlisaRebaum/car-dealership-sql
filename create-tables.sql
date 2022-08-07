CREATE TABLE car (
	car_id SERIAL PRIMARY KEY,
	car_make VARCHAR(150),
	car_model VARCHAR(150),
	car_color VARCHAR(150),
	car_year VARCHAR(100)
);

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	phone_num VARCHAR(100),
	billing_info VARCHAR(150)
);

CREATE TABLE salesperson (
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

CREATE TABLE mechanic (
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

CREATE TABLE parts (
	parts_id SERIAL PRIMARY KEY,
	part_name VARCHAR(150)
);

CREATE TABLE services (
	service_ticket_id SERIAL PRIMARY KEY,
	service_cost NUMERIC(8,2),
	car_id INTEGER,
	mechanic_id INTEGER,
	parts_id INTEGER,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(parts_id) REFERENCES parts(parts_id)
);

CREATE TABLE invoice (
	invoice_id SERIAL PRIMARY KEY,
	amount NUMERIC(8,2),
	date_ DATE DEFAULT CURRENT_DATE,
	car_id INTEGER,
	service_ticket_id INTEGER,
	staff_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(service_ticket_id) REFERENCES services(service_ticket_id),
	FOREIGN KEY(staff_id) REFERENCES salesperson(staff_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);






