select mdate,
       team1, 
       sum(case when goal.teamid = game.team1 then 1 else 0 end) as score1,
       team2,
       sum(case when goal.teamid= game.team2 then 1 else 0 end) as score2

from game join goal on (id=matchid)
group by mdate,team1, team2
   ORDER BY mdate, matchid, team1, team2

 
