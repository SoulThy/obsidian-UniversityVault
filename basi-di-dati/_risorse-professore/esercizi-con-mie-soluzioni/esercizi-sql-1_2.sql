--c2]  per ciascun impiegato i progetti coordinati da dipartimenti diversi da quello per cui l'impiegato lavora;

-- versione senza join
SELECT I.nome, L.id_imp, L.id_prog
FROM Impiegato I, Lavoro L, Progetto P
WHERE I.id = L.id_imp
AND L.id_prog = P.id
AND NOT I.id_dpt = P.id_dpt

--versione con join
SELECT I.nome, L.id_imp, L.id_prog
FROM Impiegato I
JOIN Lavoro L on L.id_imp = I.id 
JOIN Progetto P on P.id = L.id_prog
WHERE NOT I.id_dpt = P.id_dpt
