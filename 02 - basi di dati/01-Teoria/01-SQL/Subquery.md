#basi-di-dati 
Una **subquery** (query annidata) è una query all'interno di un'altra query. È utile per recuperare dati che saranno utilizzati nella query esterna.
# Sintassi di base 
```sql 
SELECT colonna1 
FROM tabella1 
WHERE colonna2 = (
		SELECT colonna3 
		FROM tabella2 
		WHERE condizione
	);