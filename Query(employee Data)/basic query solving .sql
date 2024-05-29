/* ======================
    DATA- Employee
    simple query to start
  =======================

-------------------------
  Live BigQuery Examples
------------------------- */

-- Show all rows and columns from the products table
-- Include the unique GCP project ID in the query

SELECT * FROM `project-143-415413.employee.employee_t`

-- The shortened form without the project ID
SELECT * FROM 'employee.employee_t`;