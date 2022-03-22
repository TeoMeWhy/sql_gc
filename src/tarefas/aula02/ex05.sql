SELECT DATE(dtCreatedAt) as dtDap,
       count(DISTINCT idPlayer) as DAP

FROM tb_lobby_stats_player

GROUP BY dtDap
ORDER BY DAP DESC