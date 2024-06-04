-- 1. The average square footage of all storefronts.
-- Query: realty=# SELECT AVG(square_footage) FROM storefronts;
-- Output:          avg
----------------------
 750.0000000000000000
(1 row)

-- 2. The total number of apartments.
-- Query: realty=# SELECT COUNT(*) FROM apartments;
-- Output:  count
-------
     6
(1 row)

-- 3. The apartments where there is no tenant
-- Query: realty=# SELECT COUNT(*) FROM apartments WHERE tenant = FALSE;
-- Output:  count
-------
     2
(1 row)
-- Query: realty=# SELECT * FROM apartments WHERE tenant = FALSE;
-- Output:  id | tenant |    price    |  landlord_name
----+--------+-------------+-----------------
 20 | f      | $650,000.00 | Elizabeth Smith
 23 | f      | $950,000.00 | Pablo Pueblo
(2 rows)

-- 4. The names of all of the companies
-- Query: realty=# SELECT name FROM companies;
-- Output:     name
------------
 Amazon
 Salesforce
 Netflix
 Google
 Apple
 Tesla
(6 rows)

-- 5. The number of cubicles and bathrooms in the 3rd office
-- Query: realty=# SELECT bathrooms, cubicles FROM offices LIMIT 1 OFFSET 2;
-- Output:  bathrooms | cubicles
-----------+----------
         4 |      600
(1 row)

-- 6. The storefronts that have kitchens
-- Query: realty=# SELECT * FROM storefronts WHERE kitchens = TRUE;
-- Output:  id | kitchens | square_footage | outdoor_seating | company_id
----+----------+----------------+-----------------+------------
  1 | t        |            800 | t               |          1
  2 | t        |            950 | f               |          2
  3 | t        |            750 | t               |          3
  4 | t        |            550 | f               |          4
  5 | t        |            600 | t               |          5
  6 | t        |            900 | t               |          6
  7 | t        |            700 | t               |          2
(7 rows)

-- 7. The storefront with the highest square footage and outdoor seating
-- Query: realty=# SELECT * FROM storefronts WHERE outdoor_seating = TRUE ORDER BY square_footage DESC LIMIT 1;
-- Output:  id | kitchens | square_footage | outdoor_seating | company_id
----+----------+----------------+-----------------+------------
  6 | t        |            900 | t               |          6
  1 | t        |            800 | t               |          1
  3 | t        |            750 | t               |          3
  7 | t        |            700 | t               |          2
  5 | t        |            600 | t               |          5
(5 rows)

-- 8. The office with the lowest number of cubicles
-- Query: realty=# SELECT * FROM offices ORDER BY cubicles ASC LIMIT 1;
-- Output:  id | bathrooms | cubicles | company
----+-----------+----------+---------
  6 |         1 |      250 | Netflix
(1 row)

-- 9. The office with the most cubicles and bathrooms
-- Query: realty=# WITH max_cubicles AS (
realty(# SELECT * FROM offices ORDER BY cubicles DESC LIMIT 1),
realty-# max_bathrooms AS (
realty(# SELECT * FROM offices ORDER BY bathrooms DESC LIMIT 1)
realty-# SELECT 'Max Cubicles' AS category, * FROM max_cubicles
realty-# UNION ALL SELECT 'Max Bathrooms' AS category, * FROM max_bathrooms;
-- Output:    category    | id | bathrooms | cubicles |  company
---------------+----+-----------+----------+------------
 Max Cubicles  |  4 |         5 |      850 | Salesforce
 Max Bathrooms |  4 |         5 |      850 | Salesforce
(2 rows)
