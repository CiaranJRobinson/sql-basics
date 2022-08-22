-- In the orders.sql file, write out the code for the following problems:

-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.

-- person_id should be different for different people.

-- Select all the records from the orders table.

-- Calculate the total number of products ordered.

-- Calculate the total order price.

-- Calculate the total order price by a single person_id.

create TABLE orders(
    order_id INTEGER,
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price FLOAT,
    quantity INTEGER
);

INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES (1, 1, 'pizza', 14.99, 2),
    (2, 1, 'salad', 9.99, 1),
    (3, 2, 'calzone', 6.99, 7),
    (4, 2, 'breadsticks', 4.99, 2),
    (5, 3, 'diet coke', 1.99, 15);

select * from orders;

select SUM(quantity) from orders;

select SUM(product_price) from orders;

select SUM(product_price) 
from orders
where person_id = 1;

