# Joins Queries – Advanced SQL

This folder contains practice queries for mastering SQL joins in the Airbnb Clone database project.

## Queries Implemented

### 1. INNER JOIN
**Objective:** Retrieve all bookings and the respective users who made those bookings.

### 2. LEFT JOIN
Objective: Retrieve all properties and their reviews, including properties that have no reviews.
Ordered by: property_id to keep property results organized.

### 3. FULL OUTER JOIN
Objective: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.

### Notes
These queries assume the following relationships:

bookings.user_id → users.id

reviews.property_id → properties.id

bookings.property_id → properties.id

Table aliases (u, b, p, r) are used for readability.
