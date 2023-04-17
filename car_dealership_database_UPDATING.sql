-- CREATE OR REPLACE FUNCTION insert_sellers(
-- 	fname VARCHAR(50),
-- 	lname VARCHAR(50)
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO sellers
-- 	VALUES(DEFAULT, fname, lname);
-- END;
-- $MAIN$;

-- CREATE OR REPLACE FUNCTION insert_sales_invoices(
-- 	seller_id INTEGER,
-- 	car_serial INTEGER,
-- 	date DATE,
-- 	price DECIMAL(12,2)
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO sales_invoices
-- 	VALUES(DEFAULT, seller_id, car_serial, date, price);
-- END;
-- $MAIN$;

-- CREATE OR REPLACE FUNCTION insert_cars_owned(
-- 	make VARCHAR(30),
-- 	model VARCHAR(30),
-- 	year_ INTEGER,
-- 	color VARCHAR(30),
-- 	cust_id INTEGER,
-- 	vin varchar(50)
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO cars_owned
-- 	VALUES(DEFAULT, make, model, year_, color, cust_id, vin);
-- END;
-- $MAIN$;

-- CREATE OR REPLACE FUNCTION insert_customers(
-- 	fname VARCHAR(50),
-- 	lname VARCHAR(50),
-- 	licence VARCHAR(50)
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO customers
-- 	VALUES(DEFAULT, fname,lname,licence);
-- END;
-- $MAIN$;


-- CREATE OR REPLACE FUNCTION insert_cards(
-- 	name_ VARCHAR(100),
-- 	number_ VARCHAR(50),
-- 	address VARCHAR(100),
-- 	zip VARCHAR(20),
-- 	expiry VARCHAR(50),
-- 	sec_code INTEGER,
-- 	customer_id INTEGER
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO cards_on_file
-- 	VALUES(DEFAULT,name_, number_, address, zip, expiry, sec_code, customer_id);
-- END;
-- $MAIN$;


-- CREATE OR REPLACE FUNCTION insert_tickets(
-- 	car_serial INTEGER,
-- 	mech_id INTEGER,
-- 	parts_needed BOOLEAN,
-- 	date DATE,
-- 	price DECIMAL(12,2)
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO tickets
-- 	VALUES(DEFAULT,car_serial,mech_id,parts_needed,date,price);
-- END;
-- $MAIN$;

-- CREATE OR REPLACE FUNCTION insert_mechanics(
-- 	fname VARCHAR(50),
-- 	lname VARCHAR(50)
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO mechanics
-- 	VALUES(DEFAULT, fname, lname);
-- END;
-- $MAIN$;

-- CREATE OR REPLACE FUNCTION insert_parts_reqs(
-- 	serv_ticket_id INTEGER,
-- 	part_id INTEGER
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO parts_requisitions
-- 	VALUES(DEFAULT,serv_ticket_id, part_id);
-- END;
-- $MAIN$;

-- CREATE OR REPLACE FUNCTION insert_parts_catalogue(
-- 	part_name VARCHAR(100),
-- 	price DECIMAL(10,2)
-- )
-- RETURNS void
-- LANGUAGE plpgsql
-- AS $MAIN$
-- BEGIN
-- 	INSERT INTO parts_catalogue
-- 	VALUES(DEFAULT,part_name,price);
-- END;
-- $MAIN$;

-------------------------------------------
-- FIRST: Sellers, Customers, Cards On File
SELECT insert_sellers();
SELECT insert_customers();
SELECT cards();

-- SECOND: Cars Owned, Sales Invoices, Mechanics
SELECT insert_cars_owned();
SELECT insert_sales_invoices();
SELECT insert_mechanics();

-- THIRD: Service Tickets, Parts Catalogue, Parts Requisitions

