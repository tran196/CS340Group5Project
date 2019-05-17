-- INSERT 
-- Query for add a new player into the roster table database
INSERT INTO rosters (roster_id, team_id, player_id) VALUES (:roster_id, :team_id, :player_id)

-- SELECT 
-- Query to select player 
SELECT player_id, fname, lname, age, nfl_team_id FROM rosters WHERE player_id = :player_id_selected_from_browse_character_page

-- UPDATE
-- Query to update player team 
UPDATE rosters SET fname = :fnameInput, lname= :lnameInput, homeworld = :homeworld_id_from_dropdown_Input, age= :ageInput WHERE id= :character_ID_from_the_update_form

-- DELETE 
-- Query to delete player player from team 
DELETE FROM roster WHERE id = :player_ID_selected_from_nfl_fantasy_player_selection_page
