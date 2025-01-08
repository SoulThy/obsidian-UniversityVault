#basi-di-dati #esercizio 

>[!tip]
> Il database popolato si trova in: [[database-corsi.db]]
# Tabella di riferimento:
- **STUDENTI** (*MATR*, NOME, COGNOME, CF)
- **ESAMI** (*MATR_STUD, COD_CORSO*, VOTO, DATA)
- **CORSI** (*CODICE*, DENOM, CFU, DOCENTE)
## Q1: Studenti che hanno preso la lode (31) in 'Basi Di Dati'
```sql
SELECT S.*
FROM STUDENTI S, ESAMI E, CORSI C
WHERE S.MATR = E.MATR_STUD
	AND E.COD_CORSO = C.CODICE
	AND C.DENOM = 'BASI DI DATI'
	AND E.VOTO = 31;
```
## Q2: Studenti che hanno preso piu di PAPERONE PAPERIS in "Linguaggi per il Web"

![[schema-stud-corsi-Q2.svg#invert_B]]

```sql
SELECT S.*
FROM STUDENTI SPP, STUDENTI S, ESAMI EPP, ESAMI E, CORSI C
WHERE SPP.NOME = 'PAPERONE'
	AND SPP.COGNOME = 'PAPERIS'
	AND EPP.COD_CORSO = C.CODICE
	AND EPP.MATR_STUD = SPP.MATR
	AND E.COD_CORSO = C.CODICE
	AND E.MATR_STUD = S.MATR
	AND C.DENOM = 'LINGUAGGI PER IL WEB'
	AND E.VOTO > EPP.VOTO
```

## Q3: Raggruppare gli studenti e contare il numero di esami che ciascuno ha passato e la media
 ![[tabelle-studenti-esami.svg]]
![[tabella-stud-fatt-Q1.svg#invert_B]]
```sql
SELECT S.NOME, S.COGNOME, COUNT(COD_CORSO) AS N_ESAMI,AVG(E.VOTO) AS V_MED
FROM STUDENTI S, ESAMI E
WHERE S.MATR = E.MATR_STUD
AND E.VOTO > 17
GROUP BY S.MATR;
```
## Q4: Media del voto e numero degli esami con esito positivo
```sql
SELECT COUNT(*) AS N_ESAMI, AVG(E.VOTO) AS MEDIA
FROM ESAMI E 
WHERE E.VOTO > 17;
```
## Q5: Numero degli esami con esito negativo
```sql
SELECT COUNT(*) 
FROM ESAMI E
WHERE E.VOTO = 17
```

## Q6: Elencare gli studenti con la media piu alta (in ordine decrescente di media) che abbiano sostenuto almeno 5 esami
Esempio di utilizzo del comando [[HAVING]].
```sql
SELECT S.*, AVG(E.VOTO) AS MEDIA
FROM STUDENTI S, ESAMI E
WHERE S.MATR = E.MATR_STUD
	AND E.VOTO > 17
GROUP BY S.MATR
HAVING COUNT(*) >= 5
ORDER BY MEDIA DESC;
```
## Q7: Per ogni corso indicare il numero di esami sostenuti con esito positivo e media, ordinate per num esami decrescente
```sql
SELECT C.denominaz,
	COUNT(*) AS Num_Esami,
	AVG(voto) AS Media_Voti
FROM Corsi C, Esami E
WHERE C.codice = E.cod_corso
	AND E.voto > 17
GROUP BY C.codice
ORDER BY Num_Esami DESC, C.denominaz;
```
## Q8: Quali esami hanno sostenuto "piu spesso" (inteso come numero di volte) i 100 studenti con la media piu alta, ordinati in base al numero di esami in ordine decrescente
Esempio pratico delle [[Subquery]]
- Prima costruiamo la tabella del 100 studenti con la media piu alta.
- Poi verifichiamo gli esami da loro sostenuti con piu' numero di volte.
![[schema-esempio-subquery1.svg#invert_B]]
![[schema-esempio-subquery2.svg#invert_B]]
```sql
-- Tabella dei primi 100 studenti con la media piu alta
SELECT TOP 100 S.*
FROM STUDENTI S, ESAMI E
WHERE S.MATR = E.MATR_STUD
GROUB BY S.MATR
ORDER BY AVG(E.VOTO) DESC, COGNOME;
```

```sql
-- Seconda parte della query, dove dentro (...) inseriamo la query preced.
SELECT C.DENOMINAZ, COUNT(*) AS N_VOLTE
FROM ESAMI E, (...) ST100
WHERE ST100.MATR = E.MATR_STUD
	AND E.VOTO > 17
GROUP BY E.CODICE
ORDER BY N_VOLTE DESC;
```
Unendo le due query: 
```sql
SELECT C.DENOMINAZ, COUNT(*) AS N_VOLTE
FROM ESAMI E, 
	(
		SELECT TOP 100 S.*
		FROM STUDENTI S, ESAMI E
		WHERE S.MATR = E.MATR_STUD
		GROUB BY S.MATR
		ORDER BY AVG(E.VOTO) DESC, COGNOME;
	) ST100
WHERE ST100.MATR = E.MATR_STUD
	AND E.VOTO > 17
GROUP BY E.CODICE
ORDER BY N_VOLTE DESC;
```

*Se volessimo inserire in una specie di 'funzione' la query interna, potremmo utilizzare il comando [[CREATE VIEW]] per rendere la query piu' leggibile*.
