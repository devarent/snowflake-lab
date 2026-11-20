USE WAREHOUSE LAB_WH;
USE DATABASE LAB_DB;
USE SCHEMA RAW;

INSERT INTO customers (id, name, country) VALUES
    (1, 'Ada Lovelace', 'GB'),
    (2, 'Grace Hopper', 'US'),
    (3, 'Edsger Dijkstra', 'NL');

INSERT INTO orders (id, customer_id, total) VALUES
    (1, 1, 120.50),
    (2, 1, 80.00),
    (3, 2, 240.00);

SELECT c.country, COUNT(*) AS orders, SUM(o.total) AS revenue
FROM customers c
JOIN orders o ON o.customer_id = c.id
GROUP BY c.country
ORDER BY revenue DESC;

SELECT name, total
FROM customers c
JOIN orders o ON o.customer_id = c.id
QUALIFY ROW_NUMBER() OVER (PARTITION BY c.id ORDER BY o.total DESC) = 1;

SELECT * FROM orders AT (OFFSET => -60 * 5);
