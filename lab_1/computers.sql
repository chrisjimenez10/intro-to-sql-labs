-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it

-- Create a computers table


-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports
-- Query: sql_lab=# CREATE TABLE computers (id serial, make VARCHAR(20), model VARCHAR(20), cpu_speed int, memory_size int, price int, release_date int, photo_url VARCHAR(20), storage_amount int, number_usb_ports int, number_firewire_ports int, number_thunderbolt_ports int);
-- Query: sql_lab=# ALTER TABLE computers DROP COLUMN release_date;
-- Query: sql_lab=# ALTER TABLE computers ADD COLUMN release_date date;
-- Output:                                             Table "public.computers"
          Column          |         Type          | Collation | Nullable |                Default
--------------------------+-----------------------+-----------+----------+---------------------------------------
 id                       | integer               |           | not null | nextval('computers_id_seq'::regclass)
 make                     | character varying(20) |           |          |
 model                    | character varying(20) |           |          |
 cpu_speed                | integer               |           |          |
 memory_size              | integer               |           |          |
 price                    | money                 |           |          |
 photo_url                | character varying(20) |           |          |
 storage_amount           | integer               |           |          |
 number_usb_ports         | integer               |           |          |
 number_firewire_ports    | integer               |           |          |
 number_thunderbolt_ports | integer               |           |          |
 release_date             | date                  |           |          |



-- Insert 4 computers into the computers table
-- Queries:
-- sql_lab=# INSERT INTO computers (make, model, cpu_speed, memory_size, price, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports, release_date) VALUES ('Apple', 'MacBook Pro', 3200, 16, '$2399.99', 'url1', 512, 4, 0, 4, '2023-10-20');
-- sql_lab=# INSERT INTO computers (make, model, cpu_speed, memory_size, price, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports, release_date) VALUES ('Dell', 'XPS 13', 2900, 8, '$999.99', 'url2', 256, 2, 0, 0, '2023-09-15');
-- sql_lab=# INSERT INTO computers (make, model, cpu_speed, memory_size, price, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports, release_date) VALUES ('HP', 'Spectre x369', 3100, 16, '$1249.99', 'url3', 512, 3, 0, 1, '2023-11-01');
-- sql_lab=# INSERT INTO computers (make, model, cpu_speed, memory_size, price, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports, release_date) VALUES ('Lenovo', 'ThinkPad X1', 3000, 16, '$1499.99', 'url4', 512, 3, 0, 2, '2024-01-10');

-- Select all entries from the computers table
-- Query: sql_lab=# SELECT * FROM computers;
-- Output:  id |  make  |    model     | cpu_speed | memory_size |   price   | photo_url | storage_amount | number_usb_ports | number_firewire_ports | number_thunderbolt_ports | release_date
----+--------+--------------+-----------+-------------+-----------+-----------+----------------+------------------+-----------------------+--------------------------+--------------
  1 | Apple  | MacBook Pro  |      3200 |          16 | $2,399.99 | url1      |            512 |                4 |                     0 |                        4 | 2023-10-20
  2 | Dell   | XPS 13       |      2900 |           8 |   $999.99 | url2      |            256 |                2 |                     0 |                        0 | 2023-09-15
  3 | HP     | Spectre x369 |      3100 |          16 | $1,249.99 | url3      |            512 |                3 |                     0 |                        1 | 2023-11-01
  4 | Lenovo | ThinkPad X1  |      3000 |          16 | $1,499.99 | url4      |            512 |                3 |                     0 |                        2 | 2024-01-10
(4 rows)


-- Display Units via CONCAT Function in order to keep integrity of datatype as integer, so we can perform mathematical operations
-- Query: sql_lab=# SELECT id, make, model, CONCAT(cpu_speed, ' MHz') AS cpu_speed, CONCAT(memory_size, ' GB') AS memory_size, price, photo_url, CONCAT(storage_amount, ' GB') AS storage_amount, CONCAT(number_usb_ports, ' ports') AS number_usb_ports, CONCAT(number_firewire_ports, ' ports') AS number_firewire_ports, CONCAT(number_thunderbolt_ports, ' ports') AS number_thunderbolt_ports, release_date FROM computers;
-- Output:  id |  make  |    model     | cpu_speed | memory_size |   price   | photo_url | storage_amount | number_usb_ports | number_firewire_ports | number_thunderbolt_ports | release_date
----+--------+--------------+-----------+-------------+-----------+-----------+----------------+------------------+-----------------------+--------------------------+--------------
  1 | Apple  | MacBook Pro  | 3200 MHz  | 16 GB       | $2,399.99 | url1      | 512 GB         | 4 ports          | 0 ports               | 4 ports                  | 2023-10-20
  2 | Dell   | XPS 13       | 2900 MHz  | 8 GB        |   $999.99 | url2      | 256 GB         | 2 ports          | 0 ports               | 0 ports                  | 2023-09-15
  3 | HP     | Spectre x369 | 3100 MHz  | 16 GB       | $1,249.99 | url3      | 512 GB         | 3 ports          | 0 ports               | 1 ports                  | 2023-11-01
  4 | Lenovo | ThinkPad X1  | 3000 MHz  | 16 GB       | $1,499.99 | url4      | 512 GB         | 3 ports          | 0 ports               | 2 ports                  | 2024-01-10
(4 rows)

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns
