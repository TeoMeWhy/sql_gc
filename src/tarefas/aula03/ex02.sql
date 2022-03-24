SELECT t1.idPlayer,
       t2.descCountry,
       AVG(100.0 * t1.qtHs/t1.qtKill) AS txAvgHs

FROM tb_lobby_stats_player as t1

LEFT JOIN tb_players as t2
ON t1.idPlayer = t2.idPlayer

GROUP BY t1.idPlayer, t2.descCountry

HAVING count(distinct t1.idLobbyGame) > 5

ORDER BY txAvgHs DESC