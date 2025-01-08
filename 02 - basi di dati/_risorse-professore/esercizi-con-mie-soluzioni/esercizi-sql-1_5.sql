-- c3] i dipartimenti che non acquistano tutti gli articoli
SELECT D.*
FROM Dipartimento D
WHERE D.id NOT IN (
    SELECT A.id_dip
    FROM Acquista A
    GROUP BY A.id_dip
    HAVING COUNT(DISTINCT A.id_art) = (SELECT COUNT(*) FROM Articoli)
);

-- d1] i dipartimenti che non acquistano tutti gli articoli venduti dal dipartimento "Dolori"

    -- tutti gli articoli distinti di "Dolori" venduti
    CREATE VIEW ArticoliDoloriVenduti AS
    SELECT DISTINCT V.*
    FROM Vende V, Dip D
    WHERE V.id_dip = D.id
        AND D.nome_d = "Dolori"

    -- tutti i dipartimenti che hanno acquistato tutti gli articoli venduti da "Dolori"
    CREATE VIEW DipIDFullBuyDolori AS
    SELECT D.id
    FROM Acquisti Acq, ArticoliDoloriVenduti ArtD
    WHERE D.id = Acq.id_dip
        AND Acq.id_art = ArtD.id_art
    GROUP BY D.id
    HAVING COUNT(DISTINCT Acq.id_art) = (SELECT COUNT(*) FROM ArtD)

    -- i dipartimenti che non acquistano tutti gli articoli venduti dal dipartimento "Dolori"
    SELECT D.*
    FROM Dipartimenti D
    WHERE D.id NOT IN (DipIDFullBuyDolori)

-- d2] gli articoli acquistati da tutti i dipartimenti che vendono l'articolo "Melanzane"


