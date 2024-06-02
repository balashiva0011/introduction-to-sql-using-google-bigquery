/* ==========================
    Data- Warehouse
    Ranking Functions
  ===========================

------------------------
  Live BigQuery Example
------------------------ */


-- Identify the top 5 warehouse IDs by employee joining  and show their total employee count


SELECT
  warehouse_id,
  SUM(employee_total) AS total_sales,
  RANK() OVER (
    ORDER BY SUM(employee_total) DESC
  ) AS sales_rank
FROM `warehouse.warehouse_3456`
GROUP BY warehouse_id
QUALIFY sales_rank <= 5
ORDER BY sales_rank;