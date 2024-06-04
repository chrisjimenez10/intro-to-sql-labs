-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it


-- Create a televisions table



--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url
-- Query: sql_lab=# CREATE TABLE televisions (id serial, model_name VARCHAR(20), screen_size int, resolution int, price money, release_date date, photo_url VARCHAR(50));
-- Output:                                       Table "public.televisions"
    Column    |         Type          | Collation | Nullable |                 Default
--------------+-----------------------+-----------+----------+-----------------------------------------
 id           | integer               |           | not null | nextval('televisions_id_seq'::regclass)
 model_name   | character varying(20) |           |          |
 screen_size  | integer               |           |          |
 resolution   | integer               |           |          |
 price        | money                 |           |          |
 release_date | date                  |           |          |
 photo_url    | character varying(50) |           |          |


-- Insert 4 televisions into the tv_models table
-- Queries:
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date, photo_url) VALUES ('Samsung QLED', 55, 3840, '$1499.99', '2023-06-01', 'url1');
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date, photo_url) VALUES ('LG OLED', 65, 3840, '$1999.99', '2023-07-15', 'url2');
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date, photo_url) VALUES ('Sony Bravia', 75, 7680, '$3499.99', '2024-01-10', 'url3');
-- sql_lab=# INSERT INTO televisions (model_name, screen_size, resolution, price, release_date, photo_url) VALUES ('TCL 6-Series', 50, 3840, '$799.99', '2022-11-05', 'url4');

-- Select all entries from the tv_models table
-- Query: sql_lab=# SELECT * FROM televisions;
-- Output:  id |  model_name  | screen_size | resolution |   price   | release_date | photo_url
----+--------------+-------------+------------+-----------+--------------+-----------
  1 | Samsung QLED |          55 |       3840 | $1,499.99 | 2023-06-01   | url1
  2 | LG OLED      |          65 |       3840 | $1,999.99 | 2023-07-15   | url2
  3 | Sony Bravia  |          75 |       7680 | $3,499.99 | 2024-01-10   | url3
  4 | TCL 6-Series |          50 |       3840 |   $799.99 | 2022-11-05   | url4
(4 rows)

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
