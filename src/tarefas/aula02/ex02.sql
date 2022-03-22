SELECT descCountry,
       count(*) AS qtdeLinhas,
       count(distinct idPlayer) AS qtdePlayers

FROM tb_players

GROUP BY descCountry
ORDER BY count(distinct idPlayer) DESC