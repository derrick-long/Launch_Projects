-- DEFINE YOUR DATABASE SCHEMA HERE
CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  customer_name_and_account_number VARCHAR(255)
);

CREATE TABLE product(
  id SERIAL PRIMARY KEY,
  product_name  VARCHAR(255)
);


CREATE TABLE sales(
  id SERIAL PRIMARY KEY,
  units_sold INTEGER,
  invoice_number INTEGER,
  invoice_frequency VARCHAR(255),
  sale_amount MONEY,
  sale_date DATE,
  customer_id INTEGER REFERENCES customer(id),
  employee_id INTEGER REFERENCES employees(id),
  product_id INTEGER REFERENCES product(id)
);
