/* ======================
    Data- Furniture
    Order By Clause
  =======================

-----------------------------------
  Slide Examples BigQuery Example
----------------------------------- */

sort product from  high to low price

SELECT 
product_color,
product_price,
purchase_size

 FROM `furniture_transation.furniture_123` 
 order by  product_price desc

