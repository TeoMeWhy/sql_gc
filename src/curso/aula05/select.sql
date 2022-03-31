select round(avgVlLevel,0) as lvl,
       avg(100.0 * txHs) as avgTxHs,
       count(idPlayer)

from tb_stats_player

group by 1
order by 1