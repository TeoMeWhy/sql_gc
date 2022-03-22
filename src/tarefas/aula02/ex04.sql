SELECT 
        DATE(dtCreatedAt) AS dtDAP,
        strftime( "%Y-%m-%d" ,dtCreatedAt) AS dtDAP,
        COUNT(DISTINCT idPlayer) AS DAP

FROM tb_lobby_stats_player

GROUP BY DATE(dtCreatedAt), strftime( "%Y-%m-%d" ,dtCreatedAt)
ORDER BY DATE(dtCreatedAt), strftime( "%Y-%m-%d" ,dtCreatedAt)