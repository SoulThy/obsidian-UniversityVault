L'**INNER JOIN** (anche comunemente chiamato **JOIN**), prende l'intersezione tra le due tabelle.
![[inner-join.svg#invert_B]]

# Sintassi di base
```sql
SELECT table1.column1,table1.column2,table2.column1,....  
FROM table1   
JOIN table2  
ON  table1.matching_column = table2.matching_column;
```