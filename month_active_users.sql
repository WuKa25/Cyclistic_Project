SELECT 
	monthname(started_at) as active_month,
	COUNT(member_casual) as users_count,
    COUNT(CASE WHEN member_casual = "member" THEN 1 ELSE NULL END) as members,
    COUNT(CASE WHEN member_casual = "casual" THEN 1 ELSE NULL END) as casuals
FROM
	cyclists
GROUP BY active_month;