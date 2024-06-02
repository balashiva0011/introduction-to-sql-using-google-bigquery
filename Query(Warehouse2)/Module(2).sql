
/* ==========================
    Data-Warehouse
    sub query concept
  ===========================

---------------------------
  Lesson BigQuery Examples
--------------------------- */


SELECT 
warehouse_id,
	maximum_capacity,
	(SELECT
		AVG(maximum_capacity)
	FROM`project-143-415413.warehouse.warehouse_3456` ) AS maximum_capacity
 FROM `project-143-415413.warehouse.warehouse_3456` 