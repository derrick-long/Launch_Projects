# Use this file to import the sales information into the
# the database.
require 'pry'
require "pg"
require "csv"

def db_connection
  begin
    connection = PG.connect(dbname: "korning")
    yield(connection)
  ensure
    connection.close
  end
end


csv_sales = CSV.readlines('sales.csv', headers: true)

employee_records = csv_sales.map {|record| record["employee"]}
employee_records.uniq!

  employee_records.each do |employee|
    db_connection do |conn|
      result = conn.exec_params('SELECT name FROM employees WHERE name=$1',[employee])

        if result.to_a.empty?
          sql = 'INSERT INTO employees (name) VALUES ($1)'
          conn.exec_params(sql, [employee])
        end
    end
  end

customer_records = csv_sales.map {|record| record["customer_and_account_no"]}
customer_records.uniq!

  customer_records.each do |customer|
    db_connection do |conn|
      result = conn.exec_params('SELECT customer_name_and_account_number FROM customer WHERE customer_name_and_account_number = $1',[customer])

        if result.to_a.empty?
          sql = 'INSERT INTO customer (customer_name_and_account_number) VALUES ($1)'
          conn.exec_params(sql, [customer])
        end
    end
  end

product_records = csv_sales.map {|record| record["product_name"]}
product_records.uniq!

  product_records.each do |product|
    db_connection do |conn|
      result = conn.exec_params('SELECT product_name FROM product WHERE product_name = $1',[product])

        if result.to_a.empty?
          sql = 'INSERT INTO product (product_name) VALUES ($1)'
          conn.exec_params(sql, [product])
        end
    end
  end

  db_connection do |conn|
    csv_sales.each do |sale|
    date = sale["sale_date"]
    amount = sale["sale_amount"]
    invoice_number = sale["invoice_no"]
    invoice_frequency = sale["invoice_frequency"]
    units_sold = sale["units_sold"]
    customer = sale["customer_and_account_no"]
    employee = sale["employee"]
    product = sale["product_name"]

    customer_id = conn.exec_params('SELECT id FROM customer where customer_name_and_account_number=$1',[customer])[0]["id"].to_i


    employee_id = conn.exec_params('SELECT id FROM employees where name=$1',[employee])[0]["id"].to_i

    product_id = conn.exec_params('SELECT id FROM product where product_name=$1',[product])[0]["id"].to_i


    sql = 'INSERT INTO sales(sale_date,sale_amount,invoice_number, invoice_frequency, units_sold, customer_id, employee_id, product_id) VALUES ($1,$2,$3,$4,$5,$6,$7,$8)'
    conn.exec_params(sql,[date, amount, invoice_number, invoice_frequency, units_sold, customer_id, employee_id, product_id])
  end
end
