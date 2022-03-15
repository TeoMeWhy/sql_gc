SELECT idPlayer,
    descCountry,
    CASE
        WHEN descCountry = 'br' THEN 'hu3hu3hu3'
        WHEN descCountry IN ('ar', 'pe', 'uy','py', 'cl', 'bo') THEN 'manito'
        WHEN descCountry IN ('ca','us') THEN 'na'
        ELSE 'Foda-se'
    END AS nacionalidade
FROM tb_players

    /* cl
     br
     ar
     pe
     uy
     py
     ca
     pt
     us
     bo
     sv
     cr
     ec */