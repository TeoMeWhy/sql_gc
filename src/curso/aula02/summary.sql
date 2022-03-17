SELECT 
       COUNT(DISTINCT idPlayer) AS qtPlayers, -- numero de players distintos
       COUNT(DISTINCT descCountry) AS qtCountry,
       AVG(DATE('now') - DATE(dtBirth)) AS idade,
       SUM(flFacebook) AS totalFB,
       SUM(flTwitter) AS totalTwitter,
       SUM(flTwitch) AS totalTwitch,
       COUNT(*) AS qtLinhas -- numero de linhas

FROM tb_players

WHERE descCountry = 'cl'