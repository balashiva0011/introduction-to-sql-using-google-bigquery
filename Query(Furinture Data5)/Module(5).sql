/* ==========================
    Data-Furniture
    Group By Clause
  ===========================

---------------------------
  Lesson BigQuery Examples
--------------------------- */

-- Count the rows for each customer_id

SELECT customer_id,
count(*) as count_coustomer_ids
 FROM `furniture_transation.furniture_123` 
 group by customer_id
 order by customer_id

 
-- Apply multiple calculation functions
SELECT customer_id,
count(*) as count_coustomer_ids,
avg(product_price) as product_prices,
min(purchase_price) as purshase_price
FROM `furniture_transation.furniture_123` 
 group by customer_id
 order by customer_id

 -- Use HAVING to filter our GROUP BY outputs

 SELECT customer_id,
count(*) as count_coustomer_ids,
avg(product_price) as product_prices,
min(purchase_price) as purshase_price
FROM `furniture_transation.furniture_123` 
 group by customer_id
 having product_prices > 20
 order by customer_id

 -- Count customer_id products below 20

 SELECT customer_id,
count(*) as count_coustomer_ids,
avg(product_price) as product_prices,
min(purchase_price) as purshase_prices
FROM `furniture_transation.furniture_123` 
where  purchase_price  < 20
group by customer_id
 order by customer_id

 -- How many products in each customer_id have a purcha_price greater than or equal to 30?
 SELECT customer_id,
count(*) as count_coustomer_ids,
FROM `furniture_transation.furniture_123` 
where  purchase_price  >= 30
group by customer_id
 order by customer_id