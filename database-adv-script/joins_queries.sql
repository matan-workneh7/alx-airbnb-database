-- INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT u.name, u.email, u.password, u.role,
       b.status, b.start_date, b.end_date, b.property_id
FROM bookings b
INNER JOIN users u
  ON b.user_id = u.id;

-- LEFT JOIN: Retrieve all properties and their reviews,
-- including properties that have no reviews
SELECT p.title, p.description, p.location, p.price, p.amenities,
       r.rating, r.comment
FROM properties p
LEFT JOIN reviews r
  ON r.property_id = p.id;

-- FULL OUTER JOIN: Retrieve all users and all bookings,
-- even if the user has no booking or a booking is not linked to a user
SELECT u.name, u.email, u.password, u.role,
       b.status, b.property_id
FROM users u
FULL OUTER JOIN bookings b
  ON u.id = b.user_id;