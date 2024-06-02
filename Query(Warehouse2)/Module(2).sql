
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

--scenario-2

--This is taken from other table 
--using subquery with join's (inner joins)

  SELECT 
	station_id,
	name,
	station_num_trips.number_of_rides AS number_of_rides_starting_at_station
FROM
	(
		SELECT
			CAST(start_station_id AS STRING) AS start_station_id_str, #**
			count(*) as number_of_rides
		FROM 
      		bigquery-public-data.new_york.citibike_trips
		GROUP BY 
			CAST(start_station_id AS STRING) #**
	)
	AS station_num_trips----------------------------------------------------------------refer as table name 
	INNER JOIN 
		bigquery-public-data.new_york.citibike_stations 
	ON 
		station_id = start_station_id_str #**
	ORDER BY 
		number_of_rides DESC;

