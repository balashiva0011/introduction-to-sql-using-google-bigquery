
s/* ==========================
    Data-Warehouse
    Case When Statements
  ===========================

---------------------------
  Lesson BigQuery Examples
--------------------------- */

SELECT warehouse_id,
warehouse_alias
case 
    when state like %KY% then 'KY'
    when state like %MI% then 'MI'
    ELSE other
    end as no_state
 FROM `warehouse.warehouse_3456` 
 order by no_state
 
 -- How many products are between the employee total.
 SELECT warehouse_id,
warehouse_alias
case
    when employee_total < 10 then "lower than 10"
    when employee_total < 20 then "lower than 20"
    ELSE "greater than value"
    end as employee_totals
 FROM `warehouse.warehouse_3456`


-- example as being taken from big query live with join function and case as well :

 SELECT 
Warehouse.warehouse_id,

CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name,
 COUNT(Orders.order_id) AS number_of_orders,
(SELECT COUNT(*)From `project-143-415413.warehouse.warehouse_678`  AS Orders) AS total_orders,
case
WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `project-143-415413.warehouse.warehouse_678` AS Orders) <= 0.20
    THEN 'Fulfilled 0-20% of Orders'
    WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `project-143-415413.warehouse.warehouse_678` AS Orders) > 0.20
    AND COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `project-143-415413.warehouse.warehouse_678` AS Orders) <= 0.60
    THEN 'Fulfilled 21-60% of Orders'
    ELSE 'Fulfilled more than 60% of Orders'
  END AS fulfillment_summary

FROM `project-143-415413.warehouse.warehouse_3456` as  Warehouse
 LEFT JOIN  `project-143-415413.warehouse.warehouse_678`  AS Orders
ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
  Warehouse.warehouse_id,
  warehouse_name
HAVING
  COUNT(Orders.order_id) > 0
 