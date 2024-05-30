/* ======================
    Data- Furniture
    Where Clause 
  =======================

---------------------------
  Lesson BigQuery Examples
--------------------------- */

-- Which products are exactly value  13.99 ?
SELECT  
product_color,
product_price,
purchase_size
FROM `furniture_transation.furniture_123` 
where product_price =13.99

-- Exact string match on product name
SELECT  
product,
product_price,
purchase_size
FROM `furniture_transation.furniture_123` 
where product ="couch"

-- Category not equal to supplement
SELECT  
product,
product_price,
purchase_size
FROM `furniture_transation.furniture_123` 
where product !="lamp"

-- What is the most expensive product in the color category?

SELECT  
product_color,
product_price,
purchase_size
FROM `furniture_transation.furniture_123` 
where product_color ="brass"
order by product_price desc


