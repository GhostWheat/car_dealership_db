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
SELECT insert_sellers("John","Wick");
SELECT insert_sellers("Theodore","Logan");
SELECT insert_sellers("William","Preston");
SELECT insert_sellers("Bob","Robertson");

SELECT insert_customers("Swan","E-G");
SELECT insert_customers("Abe","Lincoln");
SELECT insert_customers("Nappy","Bonaparte");
SELECT insert_customers("Sigmund","Freud");

SELECT cards("Swan E-G","1111222233334444","1234 Main Street Chicago","60666","01/25",666,1);
SELECT cards("Abraham Lincoln","5555666677778888","4321 Main Street Springfield","60000","01/24",111,2);
SELECT cards("Napoleon Jiberious Bonaparte","1234432112349999","101 Rue Ste Germaine Paris","4444-0123","01/25",989,3);
SELECT cards("Sigmund H Freud","666444333111111111","123 Ztreyte Wien","99998","09/26",010,4);

-- SECOND: Cars Owned, Sales Invoices, Mechanics
SELECT insert_cars_owned("Toyota","Acura",2005,"Red",1,"454545454545ABXY");
SELECT insert_cars_owned("Toyota","Acura",2023,"Banana Yellow",1,"23232323232323LALO");
SELECT insert_cars_owned("French","Horse",1810,"Chestnut",3,"NEEEEEEEEEEIIIGH");
SELECT insert_cars_owned("Bugatti","Chiron Sport",2023,"Fire-Engine Red",4,"P3NF1FT33NCLUB");

SELECT insert_sales_invoices(1,1,05/26/2005,20000.99);
SELECT insert_sales_invoices(1,2,3/17/2023,20001.08);
SELECT insert_sales_invoices(2,3,6/17/1815,9999999999.99);
SELECT insert_sales_invoices(3,4,1/01/2023,20002.08);

SELECT insert_mechanics("Big","Joe");
SELECT insert_mechanics("Large","Lu");
SELECT insert_mechanics("Huge","Henri");
SELECT insert_mechanics("Lil","Guy");

-- THIRD: Service Tickets, Parts Catalogue, Parts Requisitions
SELECT insert_tickets(1,1,true,01/02/2022,23.12);
SELECT insert_tickets(1,2,true,01/02/2022,23.12);
SELECT insert_tickets(1,3,true,01/02/2022,23.12;
SELECT insert_tickets(2,4,false,01/02/2022.77.11);

SELECT insert_parts_catalogue("MEGABASS SUBWOOFER",1.00);
SELECT insert_parts_catalogue("PLASMA RIFLE, USED",1.50);
SELECT insert_parts_catalogue("SNOW TIRES",9999.99);
SELECT insert_parts_catalogue("");

SELECT insert_parts_req();
SELECT insert_parts_req();
SELECT insert_parts_req();
SELECT insert_parts_req();
