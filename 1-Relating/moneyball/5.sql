SELECT teams.name FROM  "teams" 
  INNER JOIN "performances" ON teams.id = performances.team_id 
  INNER JOIN "players" ON players.id = performances.player_id 
  WHERE players.first_name = 'Satchel' AND players.last_name = 'Paige';
