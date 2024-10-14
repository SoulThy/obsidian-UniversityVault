#basi-di-dati #esercizio 
# Tabelle di riferimento:
- **STUDENTI** (Matr, Nome, Cognome, CF)
- **ESAMI** (Matr_Stud, Cod_Corso, Voto, Data)
## Q1: Raggruppare gli studenti e contare il numero di esami che ciascuno ha passato e la media
 ![[tabelle-studenti-esami.svg]]
![[tabella-stud-fatt-Q1.svg#invert_B]]
```sql
SELECT S.NOME, S.COGNOME, COUNT(COD_CORSO) AS N_ESAMI,AVG(E.VOTO) AS V_MED
FROM STUDENTI S, ESAMI E
WHERE S.MATR = E.MATR_STUD
AND E.VOTO > 17
GROUP BY S.MATR;
```
## Q2: Media del voto e numero degli esami con esito positivo
```sql
SELECT COUNT(*) AS N_ESAMI, AVG(E.VOTO) AS MEDIA
FROM ESAMI E 
WHERE E.VOTO > 17;
```
## Q3: Numero degli esami con esito negativo
```sql
SELECT COUNT(*) 
FROM ESAMI E
WHERE E.VOTO = 17
```
