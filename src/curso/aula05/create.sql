DROP TABLE IF EXISTS tb_stats_player;

CREATE TABLE tb_stats_player AS
WITH tb_stats AS (
    SELECT 

        idPlayer,
        count(idLobbyGame) as qtLobby,
        avg(qtKill) as avgQtKill,
        min(qtKill) as minQtKill,
        max(qtKill) as maxQtKill,

        avg(qtAssist) as avgQtAssist,
        min(qtAssist) as minQtAssist,
        max(qtAssist) as maxQtAssist,

        avg(qtDeath) as avgQtDeath,
        min(qtDeath) as minQtDeath,
        max(qtDeath) as maxQtDeath,

        avg(qtHs) as avgQtHs,
        min(qtHs) as minQtHs,
        max(qtHs) as maxQtHs,

        sum(1.0 * qtHs) / sum(qtKill) as txHs,

        avg(qtBombeDefuse) as avgQtBombeDefuse,
        min(qtBombeDefuse) as minQtBombeDefuse,
        max(qtBombeDefuse) as maxQtBombeDefuse,

        avg(qtBombePlant) as avgQtBombePlant,
        min(qtBombePlant) as minQtBombePlant,
        max(qtBombePlant) as maxQtBombePlant,

        avg(qtTk) as avgQtTk,
        min(qtTk) as minQtTk,
        max(qtTk) as maxQtTk,

        avg(qtTkAssist) as avgQtTkAssist,
        min(qtTkAssist) as minQtTkAssist,
        max(qtTkAssist) as maxQtTkAssist,

        avg(qt1Kill) as avgQt1Kill,
        min(qt1Kill) as minQt1Kill,
        max(qt1Kill) as maxQt1Kill,

        avg(qt2Kill) as avgQt2Kill,
        min(qt2Kill) as minQt2Kill,
        max(qt2Kill) as maxQt2Kill,

        avg(qt3Kill) as avgQt3Kill,
        min(qt3Kill) as minQt3Kill,
        max(qt3Kill) as maxQt3Kill,

        avg(qt4Kill) as avgQt4Kill,
        min(qt4Kill) as minQt4Kill,
        max(qt4Kill) as maxQt4Kill,

        avg(qt5Kill) as avgQt5Kill,
        min(qt5Kill) as minQt5Kill,
        max(qt5Kill) as maxQt5Kill,

        avg(qtPlusKill) as avgQtPlusKill,
        min(qtPlusKill) as minQtPlusKill,
        max(qtPlusKill) as maxQtPlusKill,

        avg(qtFirstKill) as avgQtFirstKill,
        min(qtFirstKill) as minQtFirstKill,
        max(qtFirstKill) as maxQtFirstKill,

        avg(vlDamage) as avgVlDamage,
        min(vlDamage) as minVlDamage,
        max(vlDamage) as maxVlDamage,

        avg(qtHits) as avgQtHits,
        min(qtHits) as minQtHits,
        max(qtHits) as maxQtHits,

        avg(qtShots) as avgQtShots,
        min(qtShots) as minQtShots,
        max(qtShots) as maxQtShots,

        avg(qtLastAlive) as avgQtLastAlive,
        min(qtLastAlive) as minQtLastAlive,
        max(qtLastAlive) as maxQtLastAlive,

        avg(qtClutchWon) as avgQtClutchWon,
        min(qtClutchWon) as minQtClutchWon,
        max(qtClutchWon) as maxQtClutchWon,

        avg(qtRoundsPlayed) as avgQtRoundsPlayed,
        min(qtRoundsPlayed) as minQtRoundsPlayed,
        max(qtRoundsPlayed) as maxQtRoundsPlayed,

        count(case when descMapName = 'de_mirage' then idLobbyGame end) as qtMirage,
        count(case when descMapName = 'de_nuke' then idLobbyGame end) as qtNuke,
        count(case when descMapName = 'de_inferno' then idLobbyGame end) as qtInferno,
        count(case when descMapName = 'de_vertigo' then idLobbyGame end) as qtVertigo,
        count(case when descMapName = 'de_ancient' then idLobbyGame end) as qtAncient,
        count(case when descMapName = 'de_dust2' then idLobbyGame end) as qtDust2,
        count(case when descMapName = 'de_train' then idLobbyGame end) as qtTrain,
        count(case when descMapName = 'de_overpass' then idLobbyGame end) as qtOverpass,

        avg(vlLevel) as avgVlLevel,
        min(vlLevel) as minVlLevel,
        max(vlLevel) as maxVlLevel,

        avg(qtSurvived) as avgQtSurvived,
        min(qtSurvived) as minQtSurvived,
        max(qtSurvived) as maxQtSurvived,

        avg(qtTrade) as avgQtTrade,
        min(qtTrade) as minQtTrade,
        max(qtTrade) as maxQtTrade,

        avg(qtFlashAssist) as avgQtFlashAssist,
        min(qtFlashAssist) as minQtFlashAssist,
        max(qtFlashAssist) as maxQtFlashAssist,

        avg(qtHitHeadshot) as avgQtHitHeadshot,
        min(qtHitHeadshot) as minQtHitHeadshot,
        max(qtHitHeadshot) as maxQtHitHeadshot,

        avg(qtHitChest) as avgQtHitChest,
        min(qtHitChest) as minQtHitChest,
        max(qtHitChest) as maxQtHitChest,

        avg(qtHitStomach) as avgQtHitStomach,
        min(qtHitStomach) as minQtHitStomach,
        max(qtHitStomach) as maxQtHitStomach,

        avg(qtHitLeftAtm) as avgQtHitLeftAtm,
        min(qtHitLeftAtm) as minQtHitLeftAtm,
        max(qtHitLeftAtm) as maxQtHitLeftAtm,

        avg(qtHitRightArm) as avgQtHitRightArm,
        min(qtHitRightArm) as minQtHitRightArm,
        max(qtHitRightArm) as maxQtHitRightArm,

        avg(qtHitLeftLeg) as avgQtHitLeftLeg,
        min(qtHitLeftLeg) as minQtHitLeftLeg,
        max(qtHitLeftLeg) as maxQtHitLeftLeg,

        avg(qtHitRightLeg) as avgQtHitRightLeg,
        min(qtHitRightLeg) as minQtHitRightLeg,
        max(qtHitRightLeg) as maxQtHitRightLeg,

        avg(flWinner) as txFlWinner

    FROM tb_lobby_stats_player

    GROUP BY idPlayer
    ORDER BY idPlayer
)

SELECT t1.*,
       t2.descCountry 

FROM tb_stats as t1

LEFT JOIN tb_players as t2
ON t1.idPlayer = t2.idPlayer;