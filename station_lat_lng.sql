SELECT
	start_lat,
    start_lng,
    COUNT(start_lng) as station_count
FROM
	cyclists
GROUP BY
	start_lat, 
    start_lng
ORDER BY station_count DESC;