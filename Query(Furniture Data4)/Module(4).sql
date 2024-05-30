-- continues.....
/* ======================
    Data- Furniture
    Where Clause 
  =======================

---------------------------
  Lesson BigQuery Examples
--------------------------- */

-- Products greater than equal to 1000.0 

SELECT  
product_color,
product_price,
purchase_size
FROM `project-143-415413.furniture_transation.furniture_123` 
where product_price >= 1000.0
order by product_price desc

-- Products less than or equal to 1000.0

SELECT  
product_color,
product_price,
purchase_size
FROM `project-143-415413.furniture_transation.furniture_123` 
where product_price <= 1000.0
order by product_price asc

-- Products between 13.99 and 1000.0
SELECT  
product_color,
product_price,
purchase_size
FROM `project-143-415413.furniture_transation.furniture_123` 
where product_price between 13.99 and 1000.0
order by product_price desc

-- Products with specific product IDs
SELECT  
customer_id,
product_price,
purchase_size
FROM `project-143-415413.furniture_transation.furniture_123` 
where customer_id IN (1980,2463,8940)
order by customer_id

-- Products not in product fan and couch
SELECT  
customer_id,
product_price,
product
FROM `project-143-415413.furniture_transation.furniture_123` 
where product not IN ("fan","couch")
order by customer_id

-- Which couch products have a good revenue number  between 20 and 30%?
SELECT  
customer_id,
product_price,
product
FROM `project-143-415413.furniture_transation.furniture_123` 
where product = "couch"
and revenue between 20 and 50



