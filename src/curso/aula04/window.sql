with tb_lobbies as (

    select *,
           row_number() OVER (PARTITION BY idPlayer ORDER BY idLobbyGame) as numeroLinha

    from tb_lobby_stats_player

    order by idPlayer
)

select * from tb_lobbies
where numeroLinha <= 3