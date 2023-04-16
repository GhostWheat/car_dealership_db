CREATE TABLE sellers (
  seller_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  driver_licence VARCHAR(50)
);

CREATE TABLE cards_on_file (
  card_id SERIAL PRIMARY KEY,
  card_name VARCHAR(100),
  card_number VARCHAR(50),
  card_address VARCHAR(100),
  card_zip VARCHAR(20),
  card_expiry VARCHAR(50),
  card_sec_code INTEGER,
  customer_id INTEGER,
    FOREIGN KEY (customer_id)
      REFERENCES customers(customer_id)
);

CREATE TABLE cars_owned (
  car_serial SERIAL PRIMARY KEY,
  make VARCHAR(30),
  model VARCHAR(30),
  year INTEGER,
  color VARCHAR(30),
  customer_id INTEGER,
  vin VARCHAR(50),
    FOREIGN KEY (customer_id)
      REFERENCES customers(customer_id)
);

CREATE TABLE sales_invoices (
  invoice_id SERIAL PRIMARY KEY,
  seller_id INTEGER,
  car_serial INTEGER,
  date DATE,
  price DECIMAL(12,2),
    FOREIGN KEY (seller_id)
      REFERENCES sellers(seller_id),
  FOREIGN KEY (car_serial)
  REFERENCES cars_owned(car_serial)
);

CREATE TABLE mechanics (
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE service_tickets (
  serv_ticket_id SERIAL PRIMARY KEY,
  car_serial INTEGER,
  mechanic_id INTEGER,
  parts_needed BOOL,
  date DATE,
  price DECIMAL(12,2),
  FOREIGN KEY (car_serial)
  REFERENCES cars_owned(car_serial), 
  FOREIGN KEY (mechanic_id)
  REFERENCES mechanics(mechanic_id)
);

CREATE TABLE parts_catalogue (
  part_id SERIAL PRIMARY KEY,
  part_name VARCHAR(100),
  price DECIMAL(10,2)
);

CREATE TABLE parts_requisitions (
  parts_requisition_id SERIAL PRIMARY KEY,
  serv_ticket_id INTEGER,
  part_id INTEGER,
    FOREIGN KEY (serv_ticket_id)
      REFERENCES service_tickets(serv_ticket_id),
  FOREIGN KEY (part_id)
  REFERENCES parts_catalogue(part_id)
);
