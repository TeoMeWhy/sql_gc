SELECT t2.descMapName,
       count(distinct t2.idLobbyGame) as qtdePartidas

FROM tb_players AS t1

LEFT JOIN tb_lobby_stats_player AS t2
ON t1.idPlayer = t2.idPlayer

WHERE t1.descCountry = 'br'

GROUP BY t2.descMapName
ORDER BY qtdePartidas DESC

