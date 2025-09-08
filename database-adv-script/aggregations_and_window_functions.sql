--rank Properties by Total Bookings

SELECT property_id, COUNT(*) AS total_bookings
From bookings
GROUP BY property_id

--rank properties by total bookings.

SELECT property_id, total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) as booking_rank
FROM (
    SELECT property_id, COUNT(*) AS total_bookings
    From bookings
    GROUP BY property_id
) AS booking_counts;
GROUP BY property_id
