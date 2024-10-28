Il **RIGHT JOIN** e' l'equivalente del [[LEFT JOIN]] fatto invertendo tabella A con tabella B.
![[right-join.svg#invert_B]]
# Sintassi di base
```sql
SELECT table1.column1,table1.column2,table2.column1,....  
FROM table1   
RIGHT JOIN table2  
ON  table1.matching_column = table2.matching_column;
```