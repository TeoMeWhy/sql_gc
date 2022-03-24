-- PRECISAMOS DE SUBQUERY PARA RESOLVER, NAO VAI SER AGORA

SELECT t1.idPlayer,
       t1.idLobbyGame, 
       t1.flWinner,
       t2.idMedal,
       t2.flActive,
       t3.descMedal,
       t1.dtCreatedAt,
       t2.dtCreatedAt,
       t2.dtRemove

FROM tb_lobby_stats_player AS t1

LEFT JOIN tb_players_medalha AS t2
ON t1.idPlayer = t2.idPlayer
AND t2.flActive = 1

LEFT JOIN tb_medalha as t3
on t2.idMedal = t3.idMedal

WHERE t3.descMedal in ('Membro Plus', 'Membro Premium')