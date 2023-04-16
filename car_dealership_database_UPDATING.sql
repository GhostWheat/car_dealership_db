CREATE OR REPLACE FUNCTION insert_sellers(fname, lname)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO sellers
	VALUES(DEFAULT, fname, lname);
END;
&MAIN&;

CREATE OR REPLACE FUNCTION insert_sales_invoices(seller_id, car_serial, date, price)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO sales_invoices
	VALUES(DEFAULT, seller_id, car_serial, date, price);
END;
&MAIN&;

CREATE OR REPLACE FUNCTION insert_cars_owned(make, model, year_, color, cust_id, vin)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO cars_owned
	VALUES(DEFAULT, make, model, year_, color, cust_id, vin);
END;
&MAIN&;

CREATE OR REPLACE FUNCTION insert_customers(fname,lname,licence)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO customers
	VALUES(DEFAULT, fname,lname,licence);
END;
&MAIN&;


CREATE OR REPLACE FUNCTION insert_cards(name_, number_, address, zip, expiry, sec_code, customer_id)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO cards_on_file
	VALUES(DEFAULT,name_, number_, address, zip, expiry, sec_code, customer_id);
END;
&MAIN&;


CREATE OR REPLACE FUNCTION insert_tickets(car_serial,mech_id,parts_needed,date,price)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO tickets
	VALUES(DEFAULT,car_serial,mech_id,parts_needed,date,price);
END;
&MAIN&;

CREATE OR REPLACE FUNCTION insert_mechanics(fname, lname)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO mechanics
	VALUES(DEFAULT, fname, lname);
END;
$MAIN$;

CREATE OR REPLACE FUNCTION insert_parts_reqs(serv_ticket_id, part_id)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO parts_requisitions
	VALUES(DEFAULT,serv_ticket_id, part_id);
END;
$MAIN$;

CREATE OR REPLACE FUNCTION insert_parts_catalogue(part_name, price\)
LANGUAGE plpgsql
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO parts_catalogue
	VALUES(DEFAULT,part_name,price);
END;
$MAIN$;

