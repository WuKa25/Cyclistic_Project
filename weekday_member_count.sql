SELECT 
	dayname(started_at) as day_of_week,
    COUNT(CASE WHEN member_casual = "member" THEN 1 ELSE NULL END) as members,
    COUNT(CASE WHEN member_casual = "casual" THEN 1 ELSE NULL END) as casuals,
	rideable_type
FROM 
	cyclists 
GROUP BY ROLLUP (day_of_week, rideable_type);