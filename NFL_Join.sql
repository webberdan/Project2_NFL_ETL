select * from stadium


SELECT *
    FROM team
    inner join stadium on team."StadiumID" = stadium."StadiumID"
    inner join game on team.home_team = game.home_team
    