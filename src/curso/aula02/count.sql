SELECT count(*), -- numero de linhas
       count(distinct idPlayer) as qtPlayers, -- numero de players distintos
       count(distinct descCountry) as qtCountry

FROM tb_players