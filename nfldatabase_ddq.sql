-- Data Definition Query


-- Table Structure for Table NFL Football Players

DROP TABLE IF EXISTS nfl_football_players;

CREATE TABLE nfl_football_players (
    player_id int NOT NULL AUTO_INCREMENT,
    fname varchar(225), 
    lname varchar(225),
    age int,
    position_id int,
    active BOOLEAN,
    nfl_team_id int, 
    PRIMARY KEY (player_id), 
    FOREIGN KEY (position_id) REFERENCES position(position_id),
    FOREIGN KEY (nfl_team_id) REFERENCES nfl_teams(nfl_team_id)
);

-- Dumping data for table ‘nfl_football_players’

INSERT INTO nfl_football_players VALUES
(1, 'Tom', 'Brady', 38, 1, 1, 1), (2, 'Patrick', 'Mahomes', 23, 1, 1, 2);


-- Table Structure for Fantasy Owners

DROP TABLE IF EXISTS fantasy_owners;

CREATE TABLE fantasy_owners (
    owner_id int(11) NOT NULL AUTO_INCREMENT,
    fname varchar(225), 
    lname varchar(225),
    PRIMARY KEY (owner_id)
);

-- Dumping data for table fantasy_owners

INSERT INTO fantasy_owners VALUES
(1, 'Andres', 'Arizala'), (2, 'Tuan', 'Tran'), (3, 'John', 'Smith'), (4, 'Bob', 'Marley');

-- Table Structure for Fantasy Leagues

DROP TABLE IF EXISTS fantasy_leagues;

CREATE TABLE fantasy_leagues (
    league_id int(11) NOT NULL AUTO_INCREMENT,
    commissioner_id int(11), 
    league_name varchar(225),
    number_of_teams int(11),
    PRIMARY KEY (league_id),
    FOREIGN KEY (commissioner_id) REFERENCES fantasy_owners(owner_id)
);

-- Dumping data for table fantasy_leagues

INSERT INTO fantasy_leagues VALUES
(1, 1, 'OSU340 League', 4);

-- Table Structure for Fantasy Teams

DROP TABLE IF EXISTS fantasy_teams;

CREATE TABLE fantasy_teams (
    team_id int(11) NOT NULL AUTO_INCREMENT,
    league_id int(11), 
    owner_id int(11),
    PRIMARY KEY (team_id),
    FOREIGN KEY (league_id) REFERENCES fantasy_leagues(league_id)
);

-- Dumping data for table fantasy_teams

INSERT INTO fantasy_teams VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4);

-- Table Structure for Rosters

DROP TABLE IF EXISTS rosters;

CREATE TABLE rosters (
    roster_id int(11) NOT NULL AUTO_INCREMENT,
    team_id int(11), 
    player_id int(11),
    PRIMARY KEY (roster_id, player_id),
    FOREIGN KEY (team_id) REFERENCES fantasy_teams(team_id)
);

-- Dumping data for table rosters

INSERT INTO rosters VALUES
(1, 1, 1), (1, 1, 2);

-- Table Structure for Position

DROP TABLE IF EXISTS position;

CREATE TABLE position (
    position_id int(11) NOT NULL AUTO_INCREMENT,
    Position varchar(3),
    PRIMARY KEY (position_id)
);

-- Dumping data for table position

INSERT INTO position VALUES
(1, 'QB'), (2, 'RB'), (3, 'WR'), (4, 'TE'), (5, 'K');

-- Table Structure for NFL Team

DROP TABLE IF EXISTS nfl_teams;

CREATE TABLE nfl_teams (
    nfl_team_id int(11) NOT NULL AUTO_INCREMENT,
    nfl_team_name varchar(255),
    PRIMARY KEY (nfl_team_id)
);

-- Dumping data for table nfl_teams

INSERT INTO nfl_teams VALUES
(1, 'Arizona Cardinals'), (2, 'Atlanta Falcons'), (3, 'Baltimore Ravens'), (4, 'Buffalo Bills'), (5, 'Carolina Panthers'),
(6, 'Chicago Bears'), (7, 'Cincinnati Bengals'), (8, 'Cleveland Browns'), (9, 'Dallas Cowboys'), (10, 'Denver Broncos'),
(11, 'Detroit Lions'), (12, 'Green Bay Packers'), (13, 'Houston Texans'), (14, 'Indianapolis Colts'), (15, 'Jacksonville Jaguars'),
(16, 'Kansas City Chiefs'), (17, 'Los Angeles Chargers'), (18, 'Los Angeles Rams'), (19, 'Miami Dolphins'), (20, 'Minnesota Vikings'),
(21, 'New England Patriots'), (22, 'New Orleans Saints'), (23, 'New York Giants'), (24, 'New York Jets'), (25, 'Oakland Raiders'),
(26, 'Philadelphia Eagles'), (27, 'Pittsburgh Steelers'), (28, 'San Francisco 49ers'), (29, 'Seattle Seahawks'), (30, 'Tampa Bay Buccanners'),
(31, 'Tennessee Titans'), (32, 'Washington Redskins'), (33, 'Free Agent');

