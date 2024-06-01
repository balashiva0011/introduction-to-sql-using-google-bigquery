/* ==========================
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
 FROM `project-143-415413.warehouse.warehouse_3456` 
 order by no_state