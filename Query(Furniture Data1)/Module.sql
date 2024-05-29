/* ======================
     DATA- Furniture
     cast function in SQL
======================

-----------------------------------
  Slide Examples BigQuery Example
----------------------------------- */
IN furiniture data purchase_price as convert datatype NUM  to FLOAT64

SELECT
cast(purchase_price as FLOAT64) as purchase_prices 
FROM `furniture_transation.furniture_123`  
order by cast(purchase_price as FLOAT64) desc

here, 
date only in data and time 

SELECT 
cast(date as date)as date_only,
purchase_price  
FROM `furniture_transation.furniture_123` 
where
date between '2020-12-01' and '2020-12-31'






