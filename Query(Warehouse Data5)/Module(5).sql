/* ==========================
    Data- Warehouse
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