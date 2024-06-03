 -- get All airports in New York
SELECT * FROM airports where city = 'New York';
  id  |            name             |   city   |    country    | iata_faa | icao | latitude  | longitude  | altitude | utc_offset | dst |        tz
------+-----------------------------+----------+---------------+----------+------+-----------+------------+----------+------------+-----+------------------
 3697 | La Guardia                  | New York | United States | LGA      | KLGA | 40.777245 | -73.872608 | 22       | -5         | A   | America/New_York
 3797 | John F Kennedy Intl         | New York | United States | JFK      | KJFK | 40.639751 | -73.778925 | 13       | -5         | A   | America/New_York
 3993 | Wall Street Heliport        | New York | United States | JRB      | KJRB | 40.701214 | -74.009028 | 7        | -5         | A   | America/New_York
 4032 | East 34th Street Heliport   | New York | United States | TSS      | NONE | 40.7425   | -73.971944 | 10       | -5         | A   | America/New_York
 6966 | Penn Station                | New York | United States | ZYP      | \\N  | 40.7505   | -73.9935   | 35       | -5         | A   | America/New_York
 7729 | West 30th St. Heliport      | New York | United States | JRA      | KJRA | 40.7545   | -74.0071   | 7        | -5         | A   | America/New_York
 7767 | Idlewild Intl               | New York | United States | IDL      | KIDL | 40.639751 | -73.778924 | 13       | -5         | A   | America/New_York
 7881 | Port Authority Bus Terminal | New York | United States |          | NYPA | 40.75616  | -73.9906   | 0        | -5         | A   | America/New_York
 8123 | One Police Plaza Heliport   | New York | United States |          | NK39 | 40.7126   | -73.9996   | 244      | -5         | A   | America/New_York
 8591 | All Airports                | New York | United States | NYC      | \\N  | 40.714167 | -74.005833 | 31       | -5         | A   | America/New_York
 9350 | Grand Central Terminal      | New York | United States |          | \\N  | 40.752726 | -73.977229 | 70       | -5         | A   | America/New_York
 9351 | Tremont                     | New York | United States |          | \\N  | 40.847301 | -73.89955  | 200      | -5         | A   | America/New_York
 9451 | Port Authority              | New York | United States |          | \\N  | 40.756667 | -73.991111 | 33       | -5         | A   | America/New_York
(13 rows)

--  get all airports in Paris
SELECT * FROM airports where city = 'Paris’;
  id  |        name         | city  | country | iata_faa | icao | latitude  | longitude | altitude | utc_offset | dst |      tz
------+---------------------+-------+---------+----------+------+-----------+-----------+----------+------------+-----+--------------
 1380 | Le Bourget          | Paris | France  | LBG      | LFPB | 48.969444 | 2.441389  | 218      | 1          | E   | Europe/Paris
 1382 | Charles De Gaulle   | Paris | France  | CDG      | LFPG | 49.012779 | 2.55      | 392      | 1          | E   | Europe/Paris
 1386 | Orly                | Paris | France  | ORY      | LFPO | 48.725278 | 2.359444  | 291      | 1          | E   | Europe/Paris
 6486 | La Defense Heliport | Paris | France  | JPU      | \\N  | 48.86667  | 2.333333  | 0        | 1          | E   | Europe/Paris
 7676 | Gare du Nord        | Paris | France  | XPG      | \\N  | 48.880931 | 2.355323  | 423      | 1          | E   | Europe/Paris
 7677 | Gare Montparnasse   | Paris | France  | XGB      | \\N  | 48.84     | 2.318611  | 423      | 1          | E   | Europe/Paris
 8586 | Gare de Lyon        | Paris | France  | PLY      | \\N  | 48.844722 | 2.373611  | 129      | 1          | E   | Europe/Paris
 8587 | Gare de LEst        | Paris | France  | XHP      | \\N  | 48.876944 | 2.359167  | 149      | 1          | E   | Europe/Paris
 8588 | All Airports        | Paris | France  | PAR      | \\N  | 48.856389 | 2.352222  | 107      | 1          | E   | Europe/Paris
 8896 | Paris Nord          | Paris | France  |          | \\N  | 48.880931 | 2.355323  | 0        | 1          | E   | Europe/Paris
(10 rows)


--  note only JFK has international flights
--  grab icao for New York
SELECT icao FROM airports WHERE city = 'New York';
 icao
------
 KLGA
 KJFK
 KJRB
 NONE
 \\N
 KJRA
 KIDL
 NYPA
 NK39
 \\N
 \\N
 \\N
 \\N
(13 rows)

-- grab icao for Paris
SELECT icao FROM airports WHERE city = 'Paris';
 icao
------
 LFPB
 LFPG
 LFPO
 \\N
 \\N
 \\N
 \\N
 \\N
 \\N
 \\N
(10 rows)

-- select all fields where destination code and origin code are from ny to paris
select * from routes where dest_code = 'CDG' AND origin_code = 'JFK';
 airline_code | airline_id | origin_code | origin_id | dest_code | dest_id | codeshare | stops |    equipment
--------------+------------+-------------+-----------+-----------+---------+-----------+-------+-----------------
 AA           |         24 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 757
 AF           |        137 | JFK         |      3797 | CDG       |    1382 |           |     0 | 332 772 388 343
 AY           |       2350 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 757
 AZ           |        596 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 332 388 772 343
 BA           |       1355 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 763 757
 DL           |       2009 | JFK         |      3797 | CDG       |    1382 |           |     0 | 332 772 388 343
 EY           |       2222 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 763 757
 IB           |       2822 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 763 757
 QR           |       4091 | JFK         |      3797 | CDG       |    1382 | Y         |     0 | 757
 SE           |       5479 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 332
 US           |       5265 | JFK         |      3797 | CDG       |    1382 |           |     0 | 763 757
(11 rows)

-- use aliases when choosing same table
SELECT icao FROM airports AS origin WHERE origin.city = 'New York';
 icao
------
 KLGA
 KJFK
 KJRB
 NONE
 \\N
 KJRA
 KIDL
 NYPA
 NK39
 \\N
 \\N
 \\N
 \\N
(13 rows)

SELECT icao FROM airports AS destination WHERE destination.city = ‘Paris’;
 icao
------
 LFPB
 LFPG
 LFPO
 \\N
 \\N
 \\N
 \\N
 \\N
 \\N
 \\N
(10 rows)

 -- start joining tables
SELECT * FROM routes INNER JOIN WHERE origin.icao = ‘JFK’ AND destination.icao = ‘CDG’

-- look more at the details of data
SELECT * FROM routes INNER JOIN airports AS origin ON origin.city = 'New York' limit 5;
 airline_code | airline_id | origin_code | origin_id | dest_code | dest_id | codeshare | stops | equipment |  id  |           name            |   city   |    country    | iata_faa | icao | latitude  | longitude  | altitude | utc_offset | dst |        tz
--------------+------------+-------------+-----------+-----------+---------+-----------+-------+-----------+------+---------------------------+----------+---------------+----------+------+-----------+------------+----------+------------+-----+------------------
 2B           |        410 | AER         |      2965 | KZN       |    2990 |           |     0 | CR2       | 3697 | La Guardia                | New York | United States | LGA      | KLGA | 40.777245 | -73.872608 | 22       | -5         | A   | America/New_York
 2B           |        410 | AER         |      2965 | KZN       |    2990 |           |     0 | CR2       | 3797 | John F Kennedy Intl       | New York | United States | JFK      | KJFK | 40.639751 | -73.778925 | 13       | -5         | A   | America/New_York
 2B           |        410 | AER         |      2965 | KZN       |    2990 |           |     0 | CR2       | 3993 | Wall Street Heliport      | New York | United States | JRB      | KJRB | 40.701214 | -74.009028 | 7        | -5         | A   | America/New_York
 2B           |        410 | AER         |      2965 | KZN       |    2990 |           |     0 | CR2       | 4032 | East 34th Street Heliport | New York | United States | TSS      | NONE | 40.7425   | -73.971944 | 10       | -5         | A   | America/New_York
 2B           |        410 | AER         |      2965 | KZN       |    2990 |           |     0 | CR2       | 6966 | Penn Station              | New York | United States | ZYP      | \\N  | 40.7505   | -73.9935   | 35       | -5         | A   | America/New_York
(5 rows)

SELECT * FROM routes INNER JOIN airports AS destination ON destination.city = ‘Paris’ limit 5;


-- narrowing things down to what we were looking for
SELECT * FROM routes INNER JOIN airports ON airport.city = 'New York' AND
 routes INNER JOIN airports AS destination ON destination.city = ‘Paris’ ;


-- cleaning up the formatting
SELECT
	COUNT(*)
FROM
	routes
INNER JOIN
	airports
AS
	origin
ON
	origin.iata_faa = routes.origin_code
INNER JOIN
	airports AS destination
ON
	destination.iata_faa = routes.dest_code
WHERE
	origin.city = 'New York'
AND
	destination.city = ‘Paris’;




-- more troubleshooting

SELECT COUNT(*) FROM routes INNER JOIN airports as destination ON destination.iata_faa = routes.dest_code WHERE destination.city = 'Paris';

-- more formatting
SELECT
	*
FROM
	routes
INNER JOIN
	airports
AS
	origin
ON
	origin.iata_faa = routes.origin_code
INNER JOIN
	airports AS destination
ON
	destination.iata_faa = routes.dest_code
WHERE
	origin.city = 'New York'
AND
	destination.city = ‘Paris’;

-- final`
SELECT
	COUNT(*)
FROM
	routes
JOIN
	airports
AS
	origin
ON
	origin.iata_faa = routes.origin_code
JOIN
	airports
AS
	destination
ON
	destination.iata_faa = routes.dest_code
WHERE
	origin.city = 'New York'
AND
	destination.city = 'Paris';
