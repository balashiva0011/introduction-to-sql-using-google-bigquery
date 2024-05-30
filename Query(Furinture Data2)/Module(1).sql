/* ======================
    Data- Furniture
    Order By Clause
  =======================

-----------------------------------
  Slide Examples BigQuery Example
----------------------------------- */

-- sort product from  high to low price

SELECT 
product_color,
product_price,
purchase_size

 FROM `furniture_transation.furniture_123` 
 order by  product_price desc

-- sort product from  low to high price

SELECT 
product_color,
product_price,
purchase_size

 FROM `furniture_transation.furniture_123` 
 order by  product_price asc

-- Sort category product from high to low
-- also known as a multi-level sort
 SELECT  
product_color,
product_price,
purchase_size
FROM `furniture_transation.furniture_123` 
order by product_price,purchase_size desc

-- Which products from each category have the highest discount?

SELECT  
product_color,
product_price,
purchase_size
FROM `project-143-415413.furniture_transation.furniture_123` 
order by product_color, product_price desc