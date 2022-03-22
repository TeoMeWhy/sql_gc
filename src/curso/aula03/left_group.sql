SELECT t1.descCountry,
       t2.descMapName,
       count(DISTINCT t2.idLobbyGame) as qtPartidas

FROM tb_players AS t1

LEFT JOIN tb_lobby_stats_player AS t2
ON t1.idPlayer = t2.idPlayer

GROUP BY t1.descCountry,
         t2.descMapName

ORDER BY t1.descCountry, count(DISTINCT t2.idLobbyGame) DESC