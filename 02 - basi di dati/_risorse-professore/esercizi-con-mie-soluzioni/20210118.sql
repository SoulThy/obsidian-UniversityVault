SELECT U.*
FROM uffici U, afferenze A, dipendenti D
WHERE D.cf = A.cf_dip
    AND A.id_uff = U.id
    AND D.nome = 'Sandro Bianchi'
    AND A.giorno_inizio <= '2019-01-05' 
    AND (A.giorno_fine >= '2019-01-05' 
        OR
        A.giorno_fine IS NULL)

-- dipendenti che hanno lavorato nello stesso ufficio di 'Mario Rossi'

-- uffici in cui ha lavorato mario rossi

SELECT D.*
FROM dipendenti D, afferenze A
WHERE D.cf = A.cf_dip
AND A.id_uff IN (
    SELECT A.id_uff 
    FROM afferenze A, dipendenti D
    WHERE A.cf_dip = D.cf
    AND D.nome = 'Mario Rossi'
)

-- 2 modo

SELECT DISTINCT D.*
FROM dipendenti D, afferenze A,
    dipendenti DM, afferenze AM

WHERE D.cf = A.cf_dip
AND DM.cf = AM.cf_dip
AND DM.nome = 'Mario Rossi'
AND A.id_uff = AM.id_uff

-- il numero di afferenti (complessivi - tutte le date) che hanno avuto gli uffici con almeno 5 afferenti

SELECT COUNT(distinct A.cf_dip) AS NUM
FROM afferenze A
GROUP BY A.id_uff
HAVING NUM >= 5

--per ottenere una query che mi specifica quale e' l'ufficio in cui... 


-- i dipendenti che non hanno mai cambiato ufficio (unica afferenza)

SELECT D.*
FROM dipendenti D, afferenze A1
WHERE D.cf = A1.cf_dip
AND NOT EXISTS(
    SELECT *
    FROM afferenze A2 
    WHERE D.cf = A2.cf_dip
    AND NOT A1.id_uff = A2.id_uff
)

