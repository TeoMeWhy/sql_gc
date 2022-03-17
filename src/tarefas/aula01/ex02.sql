SELECT *

FROM tb_players

WHERE descCountry = 'br'
AND strftime('%Y',dtBirth) = '1992'