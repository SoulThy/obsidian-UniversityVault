-- le squadre che hanno vinto in trasferta il 31 Gennaio 2019

SELECT S.*
FROM squadre S, partite P
WHERE S.ID = P.ID_SQ_FUORI
    AND P.GOL_FUORI > P.GOL_CASA
    AND P.DATA = '2019-01-31'

-- le squadre che hanno sconfitto l'inter sul campo (inter quindi giocava in casa)

SELECT S.*
FROM squadre S, partite P, squadre SI
WHERE SI.nome = "Inter"
    AND S.ID = P.ID_SQ_FUORI
    AND P.ID_SQ_CASA = SI.ID
    AND P.GOL_FUORI > P.GOL_CASA

-- l'elenco alfabetico delle squadre con il numero di partire giocate in casa e di partite giocate fuori casa

SELECT S.NOME, COUNT(distinct PC.ID), COUNT(distinct PF.ID)
FROM squadre S, partite PC, partite PF
WHERE PC.ID_SQ_CASA = S.ID
    AND PF.ID_SQ_FUORI = S.ID
GROUP BY S.ID
ORDER BY S.NOME ASC

-- Le squadre che non hanno mai segnato alcun gol fuori casa

SELECT S.*
FROM squadre S
WHERE NOT EXISTS(
    SELECT *
    FROM partite P
    WHERE S.id = P.id_sq_fuori
    AND P.gol_fuori > 0
)

    

