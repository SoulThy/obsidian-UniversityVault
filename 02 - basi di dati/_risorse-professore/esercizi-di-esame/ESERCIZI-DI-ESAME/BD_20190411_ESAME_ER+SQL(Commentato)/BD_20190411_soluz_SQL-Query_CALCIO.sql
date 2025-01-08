-----------------------------------------------------------
-- CORSO: BASI DI DATI (sede di Latina)
-- PROF. UMBERTO NANNI
-----------------------------------------------------------
-- PROVA SCRITTA 11 APRILE 2019
-----------------------------------------------------------
-- BASE DI DATI: PARTITE
-- Giocatori (id, cf, nome, cognome, id_sq)
-- Squadre (id, nome, sede)
-- Partite (id,data,arbitro,id_sq_casa,gol_casa,id_sq_fuori,gol_fuori)
-----------------------------------------------------------------------
-- INTERROGAZIONI
-- 2a. Le squadre che hanno vinto in trasferta il 31 Gennaio 2019
-- 2b. Le squadre che hanno sconfitto l'Inter sul suo campo (quando
--     l'Inter giocava in casa)
-- 2c. L'elenco alfabetico delle squadre con il numero di partite
--     giocate in casa e di partite giocate fuori casa
-- 2d. Le squadre che non hanno mai segnato alcun gol fuori casa
-----------------------------------------------------------
-- 2a. Le squadre che hanno vinto in trasferta il 31 Gennaio 2019

SELECT S.* 
FROM   Squadre S, Partite P 
WHERE  S.id = P.id_sq_fuori     -- 1 
   AND P.gol_fuori > P.gol_casa -- 2
   AND P.DATA = '2019-01-31'    -- 3
;

-----------------------------------------------------------
-- 2b. Le squadre che hanno sconfitto l'Inter sul suo campo (quando
--     l'Inter giocava in casa)

SELECT DISTINCT S.* 
FROM   Squadre S, Squadre SI, Partite P
WHERE  SI.nome = 'Inter'        -- 1 
   AND S.id = P.id_sq_fuori     -- 2 
   AND SI.id = P.id_sq_casa     -- 3 
   AND P.gol_fuori > P.gol_casa -- 4
;

-----------------------------------------------------------
-- 2c. L'elenco alfabetico delle squadre con il numero di partite
--     giocate in casa e di partite giocate fuori casa

-- PRIMA SOLUZIONE

-- Prima dell'aggregazione
SELECT * 
FROM   Squadre S, Partite PC, Partite PF
WHERE  S.id = PC.id_sq_casa             -- 1 
   AND S.id = PF.id_sq_fuori            -- 2 
; 

-- Prima soluzione completa
SELECT S.*,
       COUNT(DISTINCT PC.id) AS casa,
       COUNT(DISTINCT PF.id) AS trasf
FROM   Squadre S, Partite PC, Partite PF 
WHERE  S.id = PC.id_sq_casa             -- 1 
   AND S.id = PF.id_sq_fuori            -- 2 
GROUP BY S.id
ORDER BY S.nome
;


-- SECONDA SOLUZIONE

-- Prima dell'aggregazione
SELECT * 
FROM   squadre S 
          LEFT JOIN Partite PC ON S.id = PC.id_sq_casa
          LEFT JOIN Partite PF ON S.id = PF.id_sq_fuori 
;

-- Seconda soluzione completa
SELECT S.*, 
       COUNT(DISTINCT PC.id) AS casa, 
       COUNT(DISTINCT PF.id) AS trasf
FROM   Squadre S
          LEFT JOIN Partite PC ON S.id = PC.id_sq_casa
          LEFT JOIN Partite PF ON S.id = PF.id_sq_fuori 
GROUP BY S.id
ORDER BY S.nome;

-----------------------------------------------------------
-- 2d. Le squadre che non hanno mai segnato alcun gol fuori casa

-- Prima soluzione
SELECT S.* 
FROM   squadre S 
WHERE NOT EXISTS                -- 1 (unica condiz) 
   (SELECT * 
    FROM   Partite P 
    WHERE  S.id = P.id_sq_fuori -- s.1
       AND P.gol_fuori > 0)     -- s.2
;

-- Seconda soluzione
SELECT S.*
FROM   Squadre S 
WHERE  S.id NOT IN              -- 1 (unica condiz) 
   (SELECT P.id_sq_fuori        -- DISTINCT facoltativo
    FROM   Partite P 
    WHERE  P.gol_fuori > 0)     -- s.1
;

-----------------------------------------------------------
