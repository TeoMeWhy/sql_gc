SELECT idPlayer,
       dtBirth

FROM tb_players

WHERE descCountry = 'ar'
AND dtBirth IS NOT NULL