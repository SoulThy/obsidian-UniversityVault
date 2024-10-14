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

## Q3: Per ogni corso indicare il numero di esami sostenuti con esito positivo e media, ordinate per num esami decrescente
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
