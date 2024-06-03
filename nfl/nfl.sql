-- 1. List the names of all NFL teams'
 -- Query: nfl=# SELECT * FROM teams;
-- Output:  id |         name         |            stadium            | division | conference |   head_coach   | active
----+----------------------+-------------------------------+----------+------------+----------------+--------
  1 | Buffalo Bills        | Ralph Wilson Stadium          | East     | AFC        | Doug Marrone   | t
  2 | Miami Dolphins       | Sun Life Stadium              | East     | AFC        | Joe Philbin    | t
  3 | New England Patriots | Gillette Stadium              | East     | AFC        | Bill Belichick | t
  4 | New York Jets        | MetLife Stadium               | East     | AFC        | Rex Ryan       | t
  5 | Baltimore Ravens     | M&T Bank Stadium              | North    | AFC        | John Harbaugh  | t
  6 | Cincinnati Bengals   | Paul Brown Stadium            | North    | AFC        | Marvin Lewis   | t
  7 | Cleveland Browns     | FirstEnergy Stadium           | North    | AFC        | Mike Pettine   | t
  8 | Pittsburgh Steelers  | Heinz Field                   | North    | AFC        | Mike Tomlin    | t
  9 | Houston Texans       | NRG Stadium                   | South    | AFC        | Bill OBrien    | t
 10 | Indianapolis Colts   | Lucas Oil Stadium             | South    | AFC        | Chuck Pagano   | t
 11 | Jacksonville Jaguars | EverBank Field                | South    | AFC        | Gus Bradley    | t
 12 | Tennessee Titans     | LP Field                      | South    | AFC        | Ken Whisenhunt | t
 13 | Denver Broncos       | Sports Authority Field        | West     | AFC        | John Fox       | t
 14 | Kansas City Chiefs   | Arrowhead Stadium             | West     | AFC        | Andy Reid      | t
 15 | Oakland Raiders      | O.co Coliseum                 | West     | AFC        | Tony Sparano   | t
 16 | San Diego Chargers   | Qualcomm Stadium              | West     | AFC        | Mike McCoy     | t
 17 | Dallas Cowboys       | AT&T Stadium                  | East     | NFC        | Jason Garrett  | t
 18 | New York Giants      | MetLife Stadium               | East     | NFC        | Tom Coughlin   | t
 19 | Philadelphia Eagles  | Lincoln Financial Field       | East     | NFC        | Chip Kelly     | t
 20 | Washington Redskins  | FedExField                    | East     | NFC        | Jay Gruden     | t
 21 | Chicago Bears        | Soldier Field                 | North    | NFC        | Marc Trestman  | t
 22 | Detroit Lions        | Ford Field                    | North    | NFC        | Jim Caldwell   | t
 23 | Green Bay Packers    | Lambeau Field                 | North    | NFC        | Mike McCarthy  | t
 24 | Minnesota Vikings    | TCF Bank Stadium              | North    | NFC        | Mike Zimmer    | t
 25 | Atlanta Falcons      | Georgia Dome                  | South    | NFC        | Mike Smith     | t
 26 | Carolina Panthers    | Bank of America Stadium       | South    | NFC        | Ron Rivera     | t
 27 | New Orleans Saints   | Mercedes-Benz Superdome       | South    | NFC        | Sean Payton    | t
 28 | Tampa Bay Buccaneers | Raymond James Stadium         | South    | NFC        | Lovie Smith    | t
 29 | Arizona Cardinals    | University of Phoenix Stadium | West     | NFC        | Bruce Arians   | t
 30 | St. Louis Rams       | Edward Jones Dome             | West     | NFC        | Jeff Fisher    | t
 31 | San Francisco 49ers  | Levis Stadium                 | West     | NFC        | Jim Harbaugh   | t
 32 | Seattle Seahawks     | CenturyLink Field             | West     | NFC        | Pete Carroll   | t
(32 rows)

-- 2. List the stadium name and head coach of all NFC teams
-- Query: nfl=# SELECT name, stadium, head_coach, conference FROM teams WHERE conference = 'NFC';
-- Output:          name         |            stadium            |  head_coach   | conference
----------------------+-------------------------------+---------------+------------
 Dallas Cowboys       | AT&T Stadium                  | Jason Garrett | NFC
 New York Giants      | MetLife Stadium               | Tom Coughlin  | NFC
 Philadelphia Eagles  | Lincoln Financial Field       | Chip Kelly    | NFC
 Washington Redskins  | FedExField                    | Jay Gruden    | NFC
 Chicago Bears        | Soldier Field                 | Marc Trestman | NFC
 Detroit Lions        | Ford Field                    | Jim Caldwell  | NFC
 Green Bay Packers    | Lambeau Field                 | Mike McCarthy | NFC
 Minnesota Vikings    | TCF Bank Stadium              | Mike Zimmer   | NFC
 Atlanta Falcons      | Georgia Dome                  | Mike Smith    | NFC
 Carolina Panthers    | Bank of America Stadium       | Ron Rivera    | NFC
 New Orleans Saints   | Mercedes-Benz Superdome       | Sean Payton   | NFC
 Tampa Bay Buccaneers | Raymond James Stadium         | Lovie Smith   | NFC
 Arizona Cardinals    | University of Phoenix Stadium | Bruce Arians  | NFC
 St. Louis Rams       | Edward Jones Dome             | Jeff Fisher   | NFC
 San Francisco 49ers  | Levis Stadium                 | Jim Harbaugh  | NFC
 Seattle Seahawks     | CenturyLink Field             | Pete Carroll  | NFC
(16 rows)

-- 3. List the head coaches of the AFC South
-- Query: nfl=# SELECT head_coach, division, conference FROM teams WHERE conference = 'AFC' AND division = 'South';
-- Output:    head_coach   | division | conference
----------------+----------+------------
 Bill OBrien    | South    | AFC
 Chuck Pagano   | South    | AFC
 Gus Bradley    | South    | AFC
 Ken Whisenhunt | South    | AFC
(4 rows)

-- 4. The total number of players in the NFL
--Query: nfl=# SELECT COUNT(*) FROM players;
-- Output:  count
-------
  1532
(1 row)

-- 5. The team names and head coaches of the NFC North and AFC East
-- Query: nfl=# SELECT name, head_coach, division, conference FROM teams WHERE division = 'North' AND conference = 'NFC' UNION SELECT name, head_coach, division, conference FROM teams WHERE division = 'East' AND conference = 'AFC';
-- Output:           name         |   head_coach   | division | conference
----------------------+----------------+----------+------------
 Buffalo Bills        | Doug Marrone   | East     | AFC
 Chicago Bears        | Marc Trestman  | North    | NFC
 Detroit Lions        | Jim Caldwell   | North    | NFC
 Green Bay Packers    | Mike McCarthy  | North    | NFC
 Miami Dolphins       | Joe Philbin    | East     | AFC
 Minnesota Vikings    | Mike Zimmer    | North    | NFC
 New England Patriots | Bill Belichick | East     | AFC
 New York Jets        | Rex Ryan       | East     | AFC
(8 rows)

-- 6. The 50 players with the highest salaries
-- Query: nfl=# SELECT * FROM players ORDER BY salary DESC LIMIT 50;
-- Output:  id  |          name           | position |  salary  | team_id
------+-------------------------+----------+----------+---------
  589 | Peyton Manning          | QB       | 18000000 |      13
 1255 | Drew Brees              | QB       | 15760000 |      27
  434 | Dwight Freeney          | DE       | 14035000 |      10
  590 | Elvis Dumervil          | DE       | 14000000 |      13
  870 | Michael Vick            | QB       | 12500000 |      19
 1390 | Sam Bradford            | QB       | 12000000 |      30
 1109 | Jared Allen             | DE       | 11619850 |      24
 1155 | Matt Ryan               | QB       | 11500000 |      25
 1021 | Matthew Stafford        | QB       | 11500000 |      22
  647 | Tamba Hali              | DE       | 11250000 |      14
   60 | Jake Long               | T        | 11200000 |       2
  871 | Nnamdi Asomugha         | CB       | 11000000 |      19
  922 | Trent Williams          | T        | 11000000 |      20
 1298 | Vincent Jackson         | WR       | 11000000 |      28
 1022 | Cliff Avril             | DE       | 10600000 |      22
 1348 | Calais Campbell         | DE       | 10600000 |      29
  289 | Joe Thomas              | T        | 10500000 |       7
 1156 | Brent Grimes            | CB       | 10431000 |      25
  435 | Peyton Manning (buyout) | QB       | 10400000 |      10
 1391 | Chris Long              | DE       | 10310000 |      30
  731 | Philip Rivers           | QB       | 10200000 |      16
 1392 | Jason Smith             | T        | 10000000 |      30
  163 | David Harris            | LB       |  9900000 |       4
  104 | Wes Welker              | WR       |  9515000 |       3
 1299 | Davin Joseph            | G        |  9500000 |      28
  648 | Dwayne Bowe             | WR       |  9443000 |      14
  872 | Asante Samuel           | CB       |  9400000 |      19
  973 | Brandon Marshall        | WR       |  9300000 |      21
 1023 | Ndamukong Suh           | DT       |  9250000 |      22
  773 | Tony Romo               | QB       |  9000000 |      17
  974 | Julius Peppers          | DE       |  8900000 |      21
  774 | Anthony Spencer         | LB       |  8800000 |      17
   61 | Karlos Dansby           | LB       |  8800000 |       2
 1201 | Jordan Gross            | T        |  8500000 |      26
  649 | Tyson Jackson           | DE       |  8005000 |      14
 1110 | Adrian Peterson         | RB       |  8000000 |      24
  591 | Champ Bailey            | CB       |  8000000 |      13
  541 | Chris Johnson           | RB       |  8000000 |      12
 1057 | Aaron Rodgers           | QB       |  8000000 |      23
  873 | Jason Peters            | T        |  7900000 |      19
 1300 | Eric Wright             | CB       |  7750000 |      28
 1202 | Steve Smith             | WR       |  7750000 |      26
  164 | Santonio Holmes         | WR       |  7750000 |       4
  975 | Jay Cutler              | QB       |  7700000 |      21
  976 | Matt Forte              | RB       |  7700000 |      21
  217 | Ray Rice                | RB       |  7700000 |       5
  977 | Brian Urlacher          | LB       |  7500000 |      21
  389 | Johnathan Joseph        | CB       |  7250000 |       9
  436 | Gary Brackett           | LB       |  7200000 |      10
  218 | Ed Reed                 | S        |  7200000 |       5
(50 rows)

-- 7. The average salary of all NFL players
-- Query: nfl=# SELECT AVG(salary) FROM players;
-- Output:          avg
----------------------
 1579692.539817232376
(1 row)

-- 8. The names and positions of players with a salary above 10_000_000
-- Query: nfl=# SELECT name, position FROM players WHERE salary > 10000000;
-- Output:           name           | position
-------------------------+----------
 Jake Long               | T
 Joe Thomas              | T
 Dwight Freeney          | DE
 Peyton Manning (buyout) | QB
 Peyton Manning          | QB
 Elvis Dumervil          | DE
 Tamba Hali              | DE
 Philip Rivers           | QB
 Michael Vick            | QB
 Nnamdi Asomugha         | CB
 Trent Williams          | T
 Matthew Stafford        | QB
 Cliff Avril             | DE
 Jared Allen             | DE
 Matt Ryan               | QB
 Brent Grimes            | CB
 Drew Brees              | QB
 Vincent Jackson         | WR
 Calais Campbell         | DE
 Sam Bradford            | QB
 Chris Long              | DE
(21 rows)

-- 9. The player with the highest salary in the NFL
 
-- 10. The name and position of the first 100 players with the lowest salaries
  

-- 11. The average salary for a DE in the nfl
  

-- 12. The names of all the players on the Buffalo Bills

-- 13. The total salary of all players on the New York Giants
  

-- 14. The player with the lowest salary on the Green Bay Packers
 
