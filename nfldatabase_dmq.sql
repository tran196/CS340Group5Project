-- INSERT 
-- Query for add a new player into the roster table database
INSERT INTO rosters (roster_id, team_id, player_id) VALUES (:roster_id, :team_id, :player_id)

-- INSERT
-- QUERY to add a new fantasy team into the fantasy team table
INSERT INTO fantasy_teams (team_id, league_id, owner_id, team_name) VALUES (:team_id, :league_id, :owner_id, :team_name)

-- SELECT 
-- Query to select player 
SELECT player_id, fname, lname, age, nfl_team_id FROM rosters WHERE player_id = :player_id_selected_from_browse_character_page

-- UPDATE
-- Query to update player team 
UPDATE rosters SET fname = :fnameInput, lname= :lnameInput, homeworld = :homeworld_id_from_dropdown_Input, age= :ageInput WHERE id= :character_ID_from_the_update_form

-- Query to update owner team name from fantasy teams table
UPDATE fantasy_teams (team_name) SET team_name = :team_name;

-- DELETE 
-- Query to delete player from fantasy team 
DELETE FROM roster WHERE id = :player_ID_selected_from_nfl_fantasy_player_selection_page

-- DELETE
-- Query to delete fantasy team from fantasy team table
DELETE FROM fantasy_teams WHERE team_id= :team_id_selected_from_web_page