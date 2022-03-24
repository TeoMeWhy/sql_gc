-- Vamos precisar de subquery para resolver essa fita

SELECT t1.idPlayer,
       t1.idLobbyGame,
       t1.qtKill,
       t1.qtHs,
       t3.descMedal

FROM tb_lobby_stats_player as t1

LEFT JOIN tb_players_medalha as t2
ON t1.idPlayer = t2.idPlayer

LEFT JOIN tb_medalha as t3
ON t2.idMedal = t3.idMedal