#basi-di-dati 
Il comando SQL **`DELETE FROM`** viene utilizzato per **rimuovere record** (righe) da una tabella in un database. La sintassi consente di specificare quali record devono essere eliminati utilizzando una condizione.
# Sintassi di base
```sql
DELETE FROM <nome_tabella> WHERE <condizione>;
```

>[!example] Example (Rimozione record specifico)
>Eliminazione dello studente con `MATR` pari a 12345:
>```sql
>DELETE FROM STUDENTI WHERE MATR = 12345;

>[!example] Example (Rimozione piu record)
>Eliminazione di tutti gli studenti il cui cognome è "Rossi":
>```sql
>DELETE FROM STUDENTI WHERE COGNOME = 'Rossi';

>[!example]
>Rimozione dell'ultima bocciatura di "PP48":
>```sql
>DELETE FROM ESAMI
>WHERE MATR_STUD = 'PP48'
>AND DATA = (
>	SELECT MAX(DATA)
>	FROM ESAMI
>	WHERE VOTO = 17
>	AND MATR_STUD = 'PP48'
>);
>```
