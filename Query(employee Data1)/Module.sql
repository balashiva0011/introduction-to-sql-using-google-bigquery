/* ======================
     DATA- Furniture
     aggregate function in SQL
======================
aggregate: a function where multiple values are processed together to form a single summary statistic.
-----------------------------------
  Slide Examples BigQuery Example
----------------------------------- */
IN furiniture data purchase_price as convert datatype NUM  to FLOAT64

SELECT
cast(purchase_price as FLOAT64) as purchase_prices 
FROM `furniture_transation.furniture_123`  
order by cast(purchase_price as FLOAT64) desc



