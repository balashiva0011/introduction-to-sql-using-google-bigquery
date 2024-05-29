/* ======================
    DATA- Furniture
    simple query to start
  =======================

-------------------------
  Live BigQuery Examples
------------------------- */

-- Show all rows and columns from the products table
-- Include the unique GCP project ID in the query

SELECT * FROM `project-143-415413.furniture_transation.furniture_123`

-- The shortened form without the project ID
SELECT * FROM `furniture_transation.furniture_123`
;

-- Only include product_id and product_name columns
SELECT
  name,
  role
FROM `furniture_transation.furniture_123`;