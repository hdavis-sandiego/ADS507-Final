/* Add 2500 orders */
INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 2500;

/* Add more orders */
INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 1500;

INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 1200;

INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 900;

INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 600;

INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 400;

INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 300;


INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 100;

INSERT INTO cust_order (order_date, customer_id, shipping_method_id, dest_address_id)
SELECT
    NOW() - INTERVAL FLOOR(RAND() * 365 * 3 * 24 * 60 * 60) SECOND AS order_date,
    c.customer_id,
    FLOOR(1 + RAND() * 4) AS shipping_method_id,
    ca.address_id
FROM customer c
INNER JOIN customer_address ca ON c.customer_id = ca.customer_id
LIMIT 50;

/* Select batch of records, random book and random price between 0 and 20. */
/*
SELECT
    o.order_id,
   (SELECT book_id
     FROM book
     ORDER BY RAND()
     LIMIT 1) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o;

SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o;
*/


/* Add a line for all orders */
INSERT INTO order_line (order_id, book_id, price)
SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o;

/* Add a line for some orders */
INSERT INTO order_line (order_id, book_id, price)
SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o
ORDER BY RAND()
LIMIT 4000;


INSERT INTO order_line (order_id, book_id, price)
SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o
ORDER BY RAND()
LIMIT 2000;


INSERT INTO order_line (order_id, book_id, price)
SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o
ORDER BY RAND()
LIMIT 1000;


INSERT INTO order_line (order_id, book_id, price)
SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o
ORDER BY RAND()
LIMIT 300;

INSERT INTO order_line (order_id, book_id, price)
SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o
ORDER BY RAND()
LIMIT 500;

INSERT INTO order_line (order_id, book_id, price)
SELECT
    o.order_id,
    FLOOR(RAND() * 11127) AS book_id,
    ROUND(RAND() * 20, 2) AS price
FROM cust_order o
ORDER BY RAND()
LIMIT 50;



/* Add order received for all orders older than 12 hours
#Total 7547 orders*/
INSERT INTO order_history (order_id, status_id, status_date)
SELECT
o.order_id,
1 AS status_id,
o.order_date + INTERVAL FLOOR(RAND() * 60 * 60 * 12) SECOND AS status_date
FROM cust_order o
WHERE o.order_date < NOW() - INTERVAL 12 HOUR;

/*#Add Pending Delivery for most of these orders, within 2 days after the previous step, where orders are older than 2 days
6800 records*/
INSERT INTO order_history (order_id, status_id, status_date)
SELECT
o.order_id,
2 AS status_id,
o.status_date + INTERVAL FLOOR(RAND() * 60 * 60 * 24 * 2) SECOND
FROM order_history o
WHERE o.status_date < NOW() - INTERVAL 2 DAY
ORDER BY RAND()
LIMIT 6800;

/* Add Delivery In Progress for orders that have a status of 2 and at least a few days in the past */
INSERT INTO order_history (order_id, status_id, status_date)
SELECT
o.order_id,
3 AS status_id,
o.status_date + INTERVAL FLOOR(RAND() * 60 * 60 * 24 * 2) SECOND AS new_date
FROM order_history o
WHERE o.status_date < NOW() - INTERVAL 2 DAY
AND o.status_id = 2
ORDER BY RAND()
LIMIT 4000;

/* Add Delivered for orders that have a status of 2 and at least a few days in the past */
INSERT INTO order_history (order_id, status_id, status_date)
SELECT
o.order_id,
4 AS status_id,
o.status_date + INTERVAL FLOOR(RAND() * 60 * 60 * 24 * 6) SECOND AS new_date
FROM order_history o
WHERE o.status_date < NOW() - INTERVAL 6 DAY
AND o.status_id = 3
ORDER BY RAND()
LIMIT 3500;

/* Add some Cancelled orders */
INSERT INTO order_history (order_id, status_id, status_date)
SELECT
o.order_id,
5 AS status_id,
o.status_date + INTERVAL FLOOR(RAND() * 60 * 60 * 24) SECOND AS new_date
FROM order_history o
WHERE o.status_id = 1
AND NOT EXISTS (
    SELECT 1
    FROM order_history oh
    WHERE oh.order_id = o.order_id
    AND oh.status_id = 2
)
ORDER BY RAND()
LIMIT 300;

/* Add some Returned orders*/
INSERT INTO order_history (order_id, status_id, status_date)
SELECT
o.order_id,
6 AS status_id,
o.status_date + INTERVAL FLOOR(RAND() * 60 * 60 * 24 * 7) SECOND AS new_date
FROM order_history o
WHERE o.status_id = 1
AND EXISTS (
    SELECT 1
    FROM order_history oh
    WHERE oh.order_id = o.order_id
    AND oh.status_id = 4
)
AND o.status_date < NOW() - INTERVAL 7 DAY
ORDER BY RAND()
LIMIT 200;

SELECT book_id, title
FROM gravity_books.book;

USE gravity_books;

# Transaction period:

CREATE VIEW transaction_period
AS
SELECT MIN(order_date) AS Record_From, MAX(order_date) Record_To
FROM cust_order; 

# Books sold per year:

CREATE VIEW books_sold_per_year
AS
SELECT COUNT(*) AS Orders_Total,
CASE 
	WHEN (YEAR(order_date)= 2020) THEN '2020'
	WHEN (YEAR(order_date)= 2021) THEN '2021'
    WHEN (YEAR(order_date)= 2022) THEN '2022'
	ELSE '2023'
END AS 'Sales_Year'
FROM cust_order
GROUP BY Sales_Year
ORDER BY Sales_Year;

# Customer number, order number, and sold book number in the entire data period:

CREATE VIEW whole_period_stats
AS
SELECT COUNT(DISTINCT(co.customer_id)) AS cust_tt , COUNT(ol.order_id) AS order_tt, COUNT(ol.book_id) AS book_tt
FROM cust_order co
JOIN order_line ol
ON co.order_id = ol.order_id;

# customer placed the most orders

CREATE VIEW value_customer
AS
SELECT c.customer_id, c.first_name, c.last_name, COUNT(*) AS books_num
FROM customer c
LEFT JOIN cust_order co
ON c.customer_id = co.customer_id
GROUP BY c.customer_id
ORDER BY COUNT(DISTINCT( co.order_id)) DESC 
LIMIT 10;
 
# shipping method prefernce:

CREATE VIEW ship_meth
AS
SELECT sm.method_name, COUNT(*) AS num ,COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS 'Percent of total'
FROM shipping_method sm
RIGHT JOIN cust_order co
ON sm.method_id = co.shipping_method_id
GROUP BY sm.method_name
ORDER BY COUNT(*) DESC;
 
# Books sold per month:
CREATE VIEW books_sold_month
AS
SELECT YEAR(order_date) AS Year, MONTH(order_date) AS Month, COUNT(*) AS num_books
FROM cust_order
GROUP BY Year, Month;

# author who published the most books:

CREATE VIEW author_books_rank
AS
SELECT a.author_id, a.author_name, COUNT(DISTINCT(b.book_id)) AS 'Books Published'
FROM author a
INNER JOIN book_author ba
ON a.author_id = ba.author_id
INNER JOIN book b
ON ba.book_id = b.book_id 
GROUP BY a.author_id
ORDER BY COUNT(DISTINCT(b.book_id)) DESC
LIMIT 5;
 
# best-selling author:

CREATE VIEW authuor_sell_rank
AS
SELECT a.author_id, a.author_name, COUNT(ol.order_id) AS Num_Sold 
FROM author a
INNER JOIN book_author ba
ON a.author_id = ba.author_id
INNER JOIN book b
ON ba.book_id= b.book_id
INNER JOIN order_line ol
ON b.book_id = ol.book_id
GROUP BY a.author_id
ORDER BY COUNT(ol.order_id) DESC 
LIMIT 5;
 
# best-selling books:

CREATE VIEW best_selling_books
AS
SELECT b.book_id, b.title AS Boook_Name, COUNT(*) AS num
FROM book b
RIGHT JOIN order_line ol
ON b.book_id = ol.book_id
GROUP BY b.book_id
ORDER BY COUNT(*) DESC
LIMIT 10;

# Top 10 most profitable books:

CREATE VIEW books_profit
AS
SELECT ol.book_id, b.title AS Book_Name, a.author_name, SUM(ol.price) AS Profit
FROM order_line ol
LEFT JOIN book b
ON ol.book_id = b.book_id
LEFT JOIN book_author ba
ON b.book_id = ba.author_id
LEFT JOIN author a
ON ba.author_id = a.author_id
GROUP BY ol.book_id 
ORDER BY SUM(ol.price) DESC 
LIMIT 10;

# Languages Rank:

CREATE VIEW books_language
AS
SELECT bl.language_id, bl.language_name, COUNT(*) AS num , COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS 'Percent of total'
FROM book_language bl
RIGHT JOIN book b
ON bl.language_id = b.language_id
GROUP BY b.language_id
ORDER BY COUNT(*) DESC;

# Top 5 profitable customers:

CREATE VIEW cust_profit
AS
SELECT c.customer_id, c.first_name, c.last_name, SUM(ol.price) AS Spent 
FROM customer c
INNER JOIN cust_order co
ON c.customer_id = co.customer_id
INNEr JOIN order_line ol
ON co.order_id = ol.order_id 
GROUP BY c.customer_id
ORDER BY Spent DESC
LIMIT 5;

# The top ten cities have the most orders placed by customers:

CREATE VIEW cust_city
AS
SELECT ad.city, ctr.country_name, COUNT(*), COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS 'Percent of total'
FROM address ad
INNER JOIN customer_address ca
ON ad.address_id = ca.address_id
INNER JOIN cust_order co
ON ca.customer_id = co.customer_id
INNER JOIN order_line ol
ON co.order_id = ol.order_id
INNER JOIN country ctr
ON ad.country_id = ctr.country_id
GROUP BY ad.city, ctr.country_name
ORDER BY COUNT(*) DESC 
LIMIT 10;

# Transform the order_date column into a Year and Month column: 

CREATE VIEW order_ym
AS
SELECT YEAR(order_date) AS Year, MONTH(order_date) AS Month, COUNT(*) AS num_books
FROM cust_order
GROUP BY Year, Month
ORDER BY Year, Month;

# group by order_date

CREATE VIEW order_date_sale
AS
SELECT co.order_date, COUNT(*) AS num_books, SUM(ol.price) AS Profit
FROM cust_order co
INNER JOIN order_line ol
ON co.order_id = ol.order_id
GROUP BY order_date;

SELECT order_date, SUM(order_id) AS num_books
FROM cust_order 
GROUP BY order_date;


# Import the population and income data through 'Table Data Import Wizard'
# JOIN the new added two tables with the original database
# 2020 Combined 

CREATE VIEW join20
AS
SELECT c.country_name, YEAR(co.order_date) AS YEAR, COUNT(*) AS books2020
FROM cust_order co
INNER JOIN address a
ON co.dest_address_id = a.address_id
INNER JOIN country c
ON a.country_id = c.country_id
GROUP BY c.country_name, YEAR(co.order_date)
HAVING YEAR = 2020;

# 2020 Combined 

CREATE VIEW join21
AS
SELECT c.country_name, YEAR(co.order_date) AS YEAR, COUNT(*) AS books2021
FROM cust_order co
INNER JOIN address a
ON co.dest_address_id = a.address_id
INNER JOIN country c
ON a.country_id = c.country_id
GROUP BY c.country_name, YEAR(co.order_date)
HAVING YEAR = 2021;

# Combined table for 2020 and 2022

CREATE VIEW pop_income_books
AS
SELECT join20.country_name, join20.books2020, p.population2020, join21.books2021, p.population2021, i.incomegroup
FROM join20 
INNER JOIN join21
ON join20.country_name = join21.country_name
INNER JOIN population p
ON join20.country_name = p.countryname
INNER JOIN income i
ON join20.country_name = i.countryname;

# Books sold by Country

CREATE VIEW Country_YM_Books
AS
SELECT c.country_name, YEAR(co.order_date) AS Year, MONTH(co.order_date) AS Month, COUNT(*) AS books_sold, SUM(ol.price) As Profit
FROM cust_order co
INNER JOIN address a
ON co.dest_address_id = a.address_id
INNER JOIN country c
ON a.country_id = c.country_id
INNER JOIN income i
ON c.country_name = i.countryname
INNER JOIN order_line ol
ON co.order_id = ol.order_id
GROUP BY c.country_name, YEAR(co.order_date),MONTH(co.order_date);

# Profitability of Books by Country: 

CREATE VIEW books_country_profit
AS
SELECT c.country_name, COUNT(ol.book_id) AS Books_Sold, SUM(ol.price) AS Profit
FROM country c
INNER JOIN address a
ON c.country_id = a.country_id
INNER JOIN cust_order co
ON a.address_id = co.dest_address_id
INNER JOIN order_line ol
ON co.order_id = ol.order_id
GROUP BY c.country_name
ORDER BY Books_Sold DESC;

# Books profit by country, population, and income group:

CREATE VIEW profit_pop_in
AS
SELECT bcp.country_name, bcp.Books_Sold, bcp.Profit, p.population2021 AS population, i.incomegroup
FROM books_country_profit bcp
INNER JOIN population p
ON bcp.country_name = p.countryname
INNER JOIN income i
ON bcp.country_name = i.countryname;

SHOW TABLES;