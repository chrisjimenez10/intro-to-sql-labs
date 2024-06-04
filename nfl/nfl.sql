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
-- Query: nfl=# SELECT * FROM players ORDER BY salary DESC limit 1;
-- Output:  id  |      name      | position |  salary  | team_id
-----+----------------+----------+----------+---------
 589 | Peyton Manning | QB       | 18000000 |      13
(1 row)

-- 10. The name and position of the first 100 players with the lowest salaries
-- Query: nfl=# SELECT name, position, salary FROM players ORDER BY salary ASC LIMIT 100;
-- Output:           name          | position | salary
------------------------+----------+--------
 Phillip Dillard        |          | 369480
 Eric Kettani           | RB       | 390000
 Austin Sylvester       | RB       | 390000
 Greg Orton             | WR       | 390000
 Jerrod Johnson         | QB       | 390000
 McLeod Bethel-Thompson | QB       | 390000
 Jonathan Crompton      | QB       | 390000
 Travon Bellamy         | CB       | 390000
 Caleb King             | RB       | 390000
 Mike Mohamed           | LB       | 390000
 Kyle Nelson            | LS       | 390000
 John Malecki           | G        | 390000
 Nathan Bussey          | LB       | 390000
 Robert James           | LB       | 390000
 Markell Carter         | DE       | 390000
 Aaron Lavarias         | DT       | 390000
 Mark Dell              | WR       | 390000
 Ronald Johnson         | WR       | 390000
 Doug Worthington       | DT       | 390000
 Derrick Jones          | WR       | 390000
 Sealver Siliga         | DT       | 390000
 Chase Beeler           | C        | 390000
 Kenny Wiggins          | T        | 390000
 Konrad Reuland         | TE       | 390000
 Michael Wilhoite       | LB       | 390000
 Garrett Chisolm        | G        | 390000
 Juamorris Stewart      | WR       | 390000
 Chad Spann             | RB       | 390000
 Trevis Turner          | T        | 390000
 Justin Medlock         | KR       | 390000
 Armon Binns            | WR       | 390000
 Derek Hall             | T        | 390000
 Shaky Smithson         | WR       | 390000
 Armando Allen          | RB       | 390000
 DAndre Goodwin         | WR       | 390000
 Jeremy Beal            | DE       | 390000
 Brett Brackett         | TE       | 390000
 Shaun Draughn          | RB       | 390000
 John Clay              | RB       | 390000
 Tristan Davis          | RB       | 390000
 Curtis Holcomb         | CB       | 390000
 Jimmy Young            | WR       | 390000
 Kevin Cone             | WR       | 390000
 Cory Nelms             | CB       | 390000
 Ben Guidugli           | TE       | 390000
 David Gilreath         | WR       | 390000
 Dontavia Bogan         | WR       | 390000
 Joe Hastings           | WR       | 390000
 Marshall McFadden      | LB       | 390000
 Kade Weston            | DT       | 390000
 Kyle Hix               | T        | 390000
 Mark LeGree            | S        | 390000
 Mike Hartline          | QB       | 390000
 Jameson Konz           | WR       | 390000
 Tyler Beiler           |          | 390000
 Mike Blanc             | DT       | 390000
 Corbin Bryant          | DT       | 390000
 Michael Jasper         | DT       | 390000
 Mike Rivera            | LB       | 390000
 Pat Devlin             | QB       | 390000
 Jerome Messam          | RB       | 390000
 Jamie McCoy            | TE       | 390000
 Lestar Jean            | WR       | 390000
 Malcolm Williams       | CB       | 390000
 Ricky Sapp             | DE       | 390000
 Rashad Carmichael      | CB       | 390000
 Alex Silvestro         | DT       | 390000
 Adam Weber             | QB       | 390000
 Adam Grant             | T        | 390000
 Jammie Kirlew          | DE       | 390000
 Joe Reitz              | T        | 405000
 Brandon Browner        | CB       | 415000
 Jeff Byers             | C        | 415000
 Jed Collins            | TE       | 415000
 Aaron Berry            | CB       | 415000
 Logan Payne            | WR       | 415000
 Marcus Sherels         | CB       | 415000
 T.J. Conley            | PR       | 415000
 Cameron Sheffield      | LB       | 415000
 Kyle Bosworth          | LB       | 415000
 Garrett McIntyre       | DT       | 415000
 John Estes             | C        | 415000
 Thomas Austin          | G        | 415000
 Emmanuel Stephens      | DT       | 415000
 Markus White           | DE       | 440000
 Ricardo Matthews       | DT       | 450000
 Quinten Lawrence       | WR       | 465000
 Bilal Powell           | RB       | 465000
 Taylor Boggs           | C        | 465000
 Kamar Aiken            | WR       | 465000
 Dexter Jackson         | WR       | 465000
 Justin Rogers          | CB       | 465000
 Johnny White           | RB       | 465000
 Eron Riley             | WR       | 465000
 Tracy Wilson           | CB       | 465000
 DaNorris Searcy        | S        | 465000
 Chris White            | LB       | 465000
 Sterling Moore         | CB       | 465000
 Chris Hairston         | T        | 465000
 Andrew Hawkins         | WR       | 465000
(100 rows)

-- 11. The average salary for a DE in the nfl
-- Query: nfl=# SELECT AVG(salary) FROM players WHERE position = 'DE';
-- Output:          avg
----------------------
 2161326.377049180328
(1 row)

-- 12. The names of all the players on the Buffalo Bills
-- Query: nfl=# SELECT players.name, teams.name FROM players FULL OUTER JOIN teams on players.team_id = teams.id WHERE players.team_id = 1;
-- Output:         name        |     name
--------------------+---------------
 Mario Williams     | Buffalo Bills
 Drayton Florence   | Buffalo Bills
 Shawne Merriman    | Buffalo Bills
 Dwan Edwards       | Buffalo Bills
 Chris Kelsay       | Buffalo Bills
 Kyle Williams      | Buffalo Bills
 Nick Barnett       | Buffalo Bills
 Spencer Johnson    | Buffalo Bills
 Ryan Fitzpatrick   | Buffalo Bills
 Steve Johnson      | Buffalo Bills
 Tyler Thigpen      | Buffalo Bills
 Lee Evans (Buyout) | Buffalo Bills
 Brad Smith         | Buffalo Bills
 Fred Jackson       | Buffalo Bills
 Scott Chandler     | Buffalo Bills
 George Wilson      | Buffalo Bills
 Erik Pears         | Buffalo Bills
 Leodis McKelvin    | Buffalo Bills
 Brian Moorman      | Buffalo Bills
 Terrence McGee     | Buffalo Bills
 Marcell Dareus     | Buffalo Bills
 Chad Rinehart      | Buffalo Bills
 Kraig Urbik        | Buffalo Bills
 Rian Lindell       | Buffalo Bills
 Kirk Morrison      | Buffalo Bills
 Corey McIntyre     | Buffalo Bills
 C.J. Spiller       | Buffalo Bills
 Garrison Sanborn   | Buffalo Bills
 Eric Wood          | Buffalo Bills
 Lionel Dotson      | Buffalo Bills
 Ruvell Martin      | Buffalo Bills
 Andy Levitre       | Buffalo Bills
 Jairus Byrd        | Buffalo Bills
 Jarron Gilbert     | Buffalo Bills
 Kyle Moore         | Buffalo Bills
 Aaron Williams     | Buffalo Bills
 Donald Jones       | Buffalo Bills
 Fendi Onobun       | Buffalo Bills
 Kellen Heard       | Buffalo Bills
 Mike Caussin       | Buffalo Bills
 Naaman Roosevelt   | Buffalo Bills
 Alex Carrington    | Buffalo Bills
 Arthur Moats       | Buffalo Bills
 Colin Brown        | Buffalo Bills
 Cordaro Howard     | Buffalo Bills
 Dan Batten         | Buffalo Bills
 David Nelson       | Buffalo Bills
 Marcus Easley      | Buffalo Bills
 Sam Young          | Buffalo Bills
 Torell Troup       | Buffalo Bills
 Kelvin Sheppard    | Buffalo Bills
 Lee Smith          | Buffalo Bills
 Chris Hairston     | Buffalo Bills
 Chris White        | Buffalo Bills
 DaNorris Searcy    | Buffalo Bills
 Johnny White       | Buffalo Bills
 Justin Rogers      | Buffalo Bills
 Kamar Aiken        | Buffalo Bills
 Michael Jasper     | Buffalo Bills
(59 rows)

-- 13. The total salary of all players on the New York Giants
-- Query: nfl=# SELECT SUM(players.salary) FROM players FULL OUTER JOIN teams ON players.team_id = teams.id WHERE teams.name = 'New York Giants';
-- Output:    sum
----------
 74179466
(1 row)

-- 14. The player with the lowest salary on the Green Bay Packers
-- Query: nfl=# SELECT * FROM players WHERE team_id = 23 ORDER BY salary ASC LIMIT 1;
-- Output:   id  |      name      | position | salary | team_id
------+----------------+----------+--------+---------
 1108 | Shaky Smithson | WR       | 390000 |      23
(1 row)
 