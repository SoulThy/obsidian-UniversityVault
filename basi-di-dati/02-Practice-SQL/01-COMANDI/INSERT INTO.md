#basi-di-dati 
# Sintassi di base
```sql
INSERT INTO <nome-tab> VALUES (<val1>, ..., <val-k>);
```

>[!example]
>```sql 
>INSERT INTO STUDENTI VALUES (12345, 'Mario', 'Rossi', 'MRORSS90A01H501Z');
>```

>[!Example] Example (Specificando le colonne)
>```sql
>INSERT INTO STUDENTI (MATR, NOME, COGNOME) 
>VALUES (12347, 'Giulia', 'Verdi'), 
> 	(12348, 'Marco', 'Neri');

