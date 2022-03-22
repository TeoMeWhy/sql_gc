SELECT descMapName,
       count(distinct idLobbyGame) AS qtdePartidas,
       count(*) AS qtdePartidasPlayer

FROM tb_lobby_stats_player

GROUP BY descMapName

ORDER BY qtdePartidas DESC