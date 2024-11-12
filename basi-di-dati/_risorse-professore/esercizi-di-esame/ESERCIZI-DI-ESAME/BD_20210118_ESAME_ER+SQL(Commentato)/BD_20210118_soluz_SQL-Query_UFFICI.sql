-----------------------------------------------------------
-- CORSO: BASI DI DATI (sede di Latina)
-- PROF. UMBERTO NANNI
-----------------------------------------------------------
-- PROVA SCRITTA 18 GENNAIO 2021
-----------------------------------------------------------
-- BASE DI DATI: UFFICI
-- Afferenze ( cf_dip, id_uff, giorno_inizio, giorno_fine )
-- Uffici ( id, nome_ufficio, id_sede ) 
-- Dipendenti ( cf, nome ) 
-- Sedi ( id, citta, indirizzo ) 
-----------------------------------------------------------------------
-- INTERROGAZIONI
-- 2a. A quale ufficio afferiva 'Sandro Bianchi' il 15 Gennaio 2019.
-- 2b. I dipendenti che hanno lavorato nello stesso ufficio di 'Mario
--     Rossi'.
-- 2c. Il numero di afferenti (complessivi - tutte le date) che hanno
--     avuto gli uffici con almeno 5 afferenti.
-- 2d. I dipendenti che non hanno mai cambiato ufficio (unica
--     afferenza).
-----------------------------------------------------------

-- 2a. A quale ufficio afferiva 'Sandro Bianchi' il 15 Gennaio 2019.

SELECT U.*
FROM   Dipendenti D, Afferenze A, Uffici U
WHERE  D.cf = A.cf_dip                  -- 1
  AND  A.id_uff = U.id                  -- 2
  AND  D.nome = 'Sandro Bianchi'        -- 3
  AND  A.giorno_inizio <= '2019-01-15'  -- 4
  AND  (A.giorno_fine >= '2019-01-15'
     OR                                 -- 5
        A.giorno_fine IS NULL)
;

-----------------------------------------------------------
-- 2b. I dipendenti che hanno lavorato nello stesso ufficio di 'Mario
--     Rossi'.

SELECT DISTINCT D.*
FROM   Dipendenti DM, Afferenze AM,
       Dipendenti D, Afferenze A
WHERE  DM.nome = 'Mario Rossi'  -- 1
  AND  DM.cf = AM.cf_dip        -- 2
  AND  AM.id_uff = A.id_uff     -- 3
  AND  D.cf = A.cf_dip          -- 4
;

-----------------------------------------------------------
-- 2c. Il numero di afferenti (complessivi - tutte le date) che hanno
--     avuto gli uffici con almeno 5 afferenti.

SELECT    U.*,
          COUNT(DISTINCT(A.cf_dip)) AS NUM_DIP
FROM      Afferenze A, Uffici U
WHERE     A.id_uff = U.id                    -- 1
GROUP BY  U.id
HAVING    COUNT(DISTINCT(A.cf_dip)) >= 5     -- M
;

-----------------------------------------------------------
-- 2d. I dipendenti che non hanno mai cambiato ufficio (unica
--     afferenza).

SELECT D.*
FROM   Dipendenti D, Afferenze A1
WHERE  D.cf = A1.cf_dip        -- 1
  AND  NOT EXISTS (            -- 2
         SELECT  *
         FROM    Afferenze A2
         WHERE   D.cf = A2.cf_dip        -- S1
         AND     A1.id_uff <> A2.id_uff  -- S2
       );

SELECT D.*
FROM   Dipendenti D, Afferenze A1
WHERE  D.cf = A1.cf_dip        -- 1
  AND  D.cf NOT IN (           -- 2
         SELECT  A2.cf_dip
         FROM    Afferenze A2
         WHERE   D.cf = A2.cf_dip        -- S1
         AND     A1.id_uff <> A2.id_uff  -- S2
       );

-----------------------------------------------------------
