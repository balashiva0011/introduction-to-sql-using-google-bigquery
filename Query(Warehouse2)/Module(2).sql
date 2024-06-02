
/* ==========================
    Data-Warehouse
    sub query concept
  ===========================

---------------------------
  Lesson BigQuery Examples
--------------------------- */

--Scenario -1

--creating new field with exisiting field 
`
SELECT 
warehouse_id,
	maximum_capacity,
	(SELECT
		AVG(maximum_capacity)
	FROM`warehouse.warehouse_3456` ) AS maximum_capacity
 FROM `warehouse.warehouse_3456` 



