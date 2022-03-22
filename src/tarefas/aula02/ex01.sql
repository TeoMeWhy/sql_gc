SELECT idPlayer,
       avg( 100.0 * qtHs / qtKill ) AS txHs

FROM tb_lobby_stats_player

GROUP BY idPlayer

ORDER BY avg( 100.0 * qtHs / qtKill ) DESC