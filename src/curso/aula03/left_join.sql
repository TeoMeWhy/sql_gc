SELECT t1.idPlayer,
       t1.descCountry,
       t2.idLobbyGame,
       t2.qt1Kill,
       t2.descMapName

FROM tb_players AS t1

LEFT JOIN tb_lobby_stats_player AS t2
ON t1.idPlayer = t2.idPlayer