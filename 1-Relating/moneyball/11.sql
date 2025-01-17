SELECT players.first_name , players.last_name ,(salaries.salary/NULLIF(performances.H,0)) AS "dollars per hit" FROM players 
  INNER JOIN salaries ON players.id = salaries.player_id 
  INNER JOIN performances ON performances.player_id = players.id AND performances.year = salaries.year 
  WHERE salaries.year = 2001 AND performances.H IS NOT NULL AND salaries.salary IS NOT NULL AND performances.H > 0 
  ORDER BY "dollars per hit" ASC , players.first_name , players.last_name LIMIT 10 ;
