Il **LEFT JOIN** ci da tutta la tabella A mettendo in evidenza se ha un intersezione con la tabella B o no.
Questo significa che se un record nella tabella A non ha il corrispettivo riferimento nella tabella B, verra' stampato con le colonne di B messe a *NULL*.
![[left-join.svg#invert_B]]
# Sintassi di base
```sql
SELECT table1.column1,table1.column2,table2.column1,....  
FROM table1   
LEFT JOIN table2  
ON  table1.matching_column = table2.matching_column;
```