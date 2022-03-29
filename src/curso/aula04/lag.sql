with tb_lag as (

select t1.idLobbyGame,
        t1.idPlayer,
        t1.qtKill,
        lag(t1.qtKill) over (partition by t1.idPlayer order by t1.idLobbyGame) as lagQtKill

from tb_lobby_stats_player as t1

order by idPlayer, idLobbyGame

)

select *,
       100.0 * t1.qtKill / t1.lagQtKill - 100 as odds 

from tb_lag as t1
where lagQtKill is not null