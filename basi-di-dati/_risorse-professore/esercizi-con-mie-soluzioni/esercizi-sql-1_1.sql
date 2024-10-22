-- a1] Il nome dei tesisti del professor Marchetti (col titolo della Tesi).

-- versione con join
SELECT S.nome, S.titolo_tesi
FROM studente S
    JOIN professore P ON P.cod_fiscale = S.id_relatore
WHERE P.nome LIKE '%Marchetti%'

-- versione senza join
SELECT S.nome, S.titolo_tesi
FROM studente S, professore P
WHERE S.id_relatore = P.cod_fiscale
    AND P.nome LIKE '%Marchetti%'

-- a2] L'elenco degli esami sostenuti dallo studente Franco Nero (col voto riportato).

-- (Non mi viene richiesta la denominazione del corso)
SELECT E.*
FROM esame E, studente S
WHERE S.matricola = E.mat-stud
    AND S.nome = 'Franco Nero'

-- b1] La denominazione dei corsi insegnati del relatore di Luigi Bianchi 

SELECT C.denominazione
FROM corso C, studente S
WHERE S.nome = 'Luigi Bianchi'
    AND C.cod_prof = S.id_relatore 
    
-- b2] Il nome degli studenti che hanno per relatore il docente di Documentazione Automatica.

SELECT S.nome
FROM studente S, corso C
WHERE C.denominazione = 'Documentazione Automatica'
    AND C.cod_prof = S.id_relatore





















