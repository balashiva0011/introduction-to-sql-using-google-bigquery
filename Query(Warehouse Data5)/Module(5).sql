/* ==========================
    Data- Warehouse and Furniture
    Calculation Functions
  ===========================

---------------------------
  Lesson BigQuery Examples
--------------------------- */

---- What is the capacity range of all warehouse?

SELECT 
    MIN(maximum_capacity) AS minimum_capacity,
    MAX(maximum_capacity) AS maximum_capacity
 FROM `warehouse.warehouse_3456` 

---- What is the average revenue from products ?
 SELECT
    AVG(revenue) AS avg_revenue
 FROM `furniture_transation.furniture_123` 

---- What is the  average revenue along with Round function from products ?

 SELECT
   Round(AVG(purchase_price),1) AS avg_purchase_price
 FROM `furniture_transation.furniture_123` 

--using round Function and calculations
 SELECT 
product,
product_color,
purchase_price,
revenue,
Round(
  purchase_price*(1-revenue/100),2) as revenu_per

 FROM `furniture_transation.furniture_123`
ORDER by revenu_per  DESC
LIMIT 5;