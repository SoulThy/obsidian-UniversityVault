#basi-di-dati 
Utilizzata per **aggiornare** i record in una tabella.
# Sintassi di base
```sql
UPDATE <nome_tabella>
SET <ATTR1> = <ESPR>
WHERE <condizione>;
```

>[!example]
>Aggiornare il voto di Mario Rossi a 21:
>```sql
>UPDATE STUDENTI 
>SET VOTO = 21 
>WHERE MATR = 12345;
>```
