#basi-di-dati #esercizio 
## Tabelle di riferimento:
- FATTURE (**ID**, NUM, P_IVA_FORN)
- RIGHE (**ID_FATT**, **POS**, COD_ART, PERC_IVA, P_UNIT, QUANT)

![[fattura-riga-ER.svg#invert_B]]
Esempio della tabella fatture:
![[tabella-fatture.svg#invert_B]] 
### Q1) Per ogni FORN(P_IVA_FORN) e DATA specificare il numero di fatture.
![[tabella-fatt-riga-Q1.svg#invert_B]]
```sql
SELECT F.P_IVA_FORN, F.DATA, COUNT(*) AS NUM_FATT
FROM FATTURE F
GROUP BY F.P_IVA_FORN, F.DATA;
```
### Q2) Per ogni fattura, calcolare: TOT, IVA, TOT_IVATO
```sql
SELECT  R.*, 
		R.P_UNIT * R.QUANT AS TOT,
		TOT * R.PERC_IVA / 100 AS IVA,
		TOT + IVA AS TOT_IVATO
FROM RIGHE R;
```
### Q3) Quante sono le fatture? 
```sql
SELECT COUNT(*) 
FROM FATTURE F;
```
