SELECT
	member_casual,
    sec_to_time(avg(time_to_sec(ride_time))) as average_time
FROM 
	base_calc
GROUP BY member_casual