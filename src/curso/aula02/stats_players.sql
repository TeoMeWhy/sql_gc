SELECT  idPlayer,
        avg(flWinner) as winRate,
        count(distinct idLobbyGame) as qtdLobby

FROM tb_lobby_stats_player

where kdnaskjndas

GROUP BY idPlayer

HAVING qtdLobby >= 10 -- apenas jogadores com mais de 10 partidas

ORDER BY winRate DESC