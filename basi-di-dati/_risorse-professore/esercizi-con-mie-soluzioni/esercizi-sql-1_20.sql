--2a] A quale ufficio afferiva 'Sandro Bianchi' il 15 Gennaio 2019

SELECT U.*
FROM uffici U
    JOIN afferenze A ON A.id_uff = U.id
    JOIN dipendenti D ON D.cf = A.cf_dip
WHERE D.nome = 'Sandro Bianchi'
AND A.giorno_inizio >= '2019-01-15'
AND (A.giorno_fine <= '2019-19-15' OR A.giorno_fine IS NULL);
