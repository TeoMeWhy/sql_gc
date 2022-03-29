WITH tb_subs AS (

SELECT idPlayer,
       case when idMedal = 1 then "Premium" else "Plus" end SubType

FROM tb_players_medalha

where idMedal in (1, 3)
and flActive = 1

group by 1,2

),

tb_winrate AS (

    select t1.idPlayer,
           avg(t1.flWinner)  as winRate

    from tb_lobby_stats_player as t1

    GROUP by t1.idPlayer

),

tb_subs_stats as (

    select t1.*,
           coalesce(t2.SubType, "Não sub") as SubType

    from tb_winrate as t1

    left join tb_subs as t2
    on t1.idPlayer = t2.idPlayer

)

select SubType,
       avg(winRate) as AvgWinRate

from tb_subs_stats

group by subType