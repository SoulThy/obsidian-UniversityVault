#basi-di-dati #esercizio 
![[schemaER-vettura-persona-polizza.svg#invert_B]]
- **VETTURE** (*ID*, ID_PERS, TARGA, MODELLO, CV_FIS)
- **PERSONE** (*ID*, COD_FIS, NOME, INDIRIZZO)
- **POLIZZE** (*NUMERO*, ID_PERS, ID_VETTURA, DATA, RISCHIO,PREMIO)
# Q1: Le vetture possedute da 'POLETTI' assicurate per RISCHIO = 'FURTO'
![[schema-vetture-persone-polizze-Q1.svg#invert_B]]
```sql
SELECT DISTINICT V.TARGA, V.MODELLO
FROM VETTURE V, PERSONE PE, POLIZZE PO
WHERE PE.NOME = 'PAOLETTI'
	AND PO.RISCHIO = 'FURTO'
	AND V.ID_PERS = PE.ID
	AND PO.ID_VETTURA = V.ID;
```