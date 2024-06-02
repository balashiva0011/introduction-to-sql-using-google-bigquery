/* ==========================
    Data-new_york_citibike
    sub query concept
  ===========================

---------------------------
  Lesson BigQuery Examples
--------------------------- */


--Scenario-4
--create new field with exisitng fields

SELECT
    starttime,
    start_station_id,
    tripduration,
    (
        SELECT ROUND(AVG(tripduration),2)
        FROM new_york_citibike.citibike_trips
        WHERE start_station_id = outer_trips.start_station_id
    ) AS avg_duration_for_station,
    ROUND(tripduration - (
        SELECT AVG(tripduration)
        FROM new_york_citibike.citibike_trips
        WHERE start_station_id = outer_trips.start_station_id), 2) AS difference_from_avg
FROM new_york_citibike.citibike_trips AS outer_trips
ORDER BY difference_from_avg DESC
LIMIT 25;

--senario-5
--similar like above and include 'where' clause 

SELECT
    tripduration,
    start_station_id
FROM new_york_citibike.citibike_trips
WHERE start_station_id IN
    (
        SELECT
            top_five.start_station_id
        FROM
        (
            SELECT
                start_station_id,
                AVG(tripduration) AS avg_duration
            FROM new_york_citibike.citibike_trips
            GROUP BY start_station_id
        ) AS top_five
        ORDER BY avg_duration DESC
        LIMIT 5







