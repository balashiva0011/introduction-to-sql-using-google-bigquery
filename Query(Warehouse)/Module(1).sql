
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
 --using this cotent
 