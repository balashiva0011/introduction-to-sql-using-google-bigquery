/* ==========================
    Data - Furniture
    Group By Clause
  ===========================

---------------------------
  Lesson BigQuery Examples
--------------------------- */
-- using function like sum(),min(),max(),avg()

--using sum() finding out sum of purchase _price with grouping by customer_id

SELECT customer_id,
count(*) as count_coustomer_ids,
sum(product_price)
FROM `furniture_transation.furniture_123` 
group by customer_id
order by customer_id

--using min() finding out sum of purchase _price with grouping by customer_id

SELECT customer_id,
count(*) as count_coustomer_ids,
min(product_price)
FROM `furniture_transation.furniture_123` 
group by customer_id
order by customer_id

--using max() finding out sum of purchase _price with grouping by customer_id

SELECT customer_id,
count(*) as count_coustomer_ids,
max(product_price)
FROM `furniture_transation.furniture_123` 
group by customer_id
order by customer_id

--using avg() finding out sum of purchase _price with grouping by customer_id   

SELECT customer_id,
count(*) as count_coustomer_ids,
avg(product_price)
FROM `furniture_transation.furniture_123` 
group by customer_id
order by customer_id
