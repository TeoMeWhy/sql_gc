SELECT
    AVG(qtdDistMedalha) as avgQtdMedal,
    MIN(qtdDistMedalha) as minQtdMedal,
    MAX(qtdDistMedalha) as maxQtdMedal

FROM(
    SELECT idPlayer,
        count(DISTINCT idMedal) as qtdDistMedalha

    FROM tb_players_medalha

    WHERE flActive = 1

    GROUP BY idPlayer

    ORDER BY qtdDistMedalha desc
)