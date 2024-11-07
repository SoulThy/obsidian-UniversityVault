>Il metodo del simplesso è un algoritmo utilizzato per risolvere problemi di **ottimizzazione lineare**.

Questo metodo e' diviso in 2 fasi principali.
## Fase 1
Verifica se l'insieme ammissibile e' vuoto (ossia non esistono soluzioni che soddisfano tutti i vincoli del problema) oppure no. Nel caso in l'insieme ammissibile risulti non vuoto la *Fase 1* restituisce una soluzione di base ammissibile ([[Soluzione di base (SB)#Soluzione di Base Ammissibile (SBA)|SBA]]) iniziale .

> Questa fase non e' altro che la *[[#Fase 2]]* applicata ad un problema "ausiliario".

I punti focali per la Fase 1 sono i seguenti:
- Viene costruito un problema **ausiliario**.
- Il problema ausiliario e' costruito in modo tale che ammette sempre soluzione ottima e ha sempre una SBA da cui e' possibile partire.
- Viene applicata la fase 2 al problema ausiliario per stabilire la soluzione ottima, in base al suo valore possiamo stabilire se il problema originario e' vuoto oppure no.
- Se il problema originario non risulta essere vuoto, possiamo ricavare una SBA di partenza per esso.

Approfondimenti:
- [[Fase 1 - Problema ausiliario]]
- [[Fase 1 - Teoremi e condizioni]]
- [[Fase 1 - Far partire la fase 2]]

### Riassuntone + scambio degenere
Sfruttando tutte le proposizioni ottenute dagli "Approfondimenti" possiamo dire:
- Se $z^* >0 \implies$ problema originario ha insieme ammissibile vuoto
- Se $z^* = 0 \implies \alpha^* = 0$
	- Se tutte le variabili $\alpha$ sono uscite dalla base $\implies$ e' disponibile una SBA del problema originario $x^* = \begin{pmatrix}Ab^{-1}b\\ 0\end{pmatrix}$
	- Se qualche variabile $\alpha_{i}^*$ e' rimasta in base $\implies$ SBA degenere del problema ausiliario
		- Svogliamo uno scambio degenere in cui proviamo a far entrare in base variabili originarie al posto di variabili ausiliarie. Di fatto stiamo rappresentando sempre lo stesso punto ma stiamo cercando di ottenere una soluzione di base non degenere. Certe volte questo e' impossibile.
		- Se lo scambio degenere e' impossibile, la riga corrispondente alla variabile artificiale rimasta in base e' combinazione lineare delle altre e qiundi puo' essere eliminata.
## Fase 2
A partire dalla soluzione di base ammissibile ottenuta dalla *Fase 1*, visitiamo altre SBA fino a determinare una soluzione ottima del problema. In alternativa, durante il processo, potrebbe emergere che ci troviamo in un caso di [[Definizione di problema illimitato (inferiormente)|problema illimitato]].
Vediamo quindi i seguenti criteri: 
- [[Fase 2 - Criterio sufficiente di ottimalita]]: ci permettera' di stabilire se una SBA e' ottimale, ossia soluzione del problema.
- [[Fase 2 - Criterio sufficiente di illimitatezza]]: ci permettera' di stabilire se il problema risulta essere illimitato

> [!example]- Esempio di ricerca tramite "forza bruta" della soluzione ottima.
> ![[Esempio di confronto tra SBA per soluzione ottimale]]

Tramite [[Fase 2 - Operazione di pivot]] possiamo iterare le SBA per trovare quella ottimale aiutandoci con i criteri precedentemente definiti.

## Esempi metodo del simplesso

> [!example]- Esempio completo di iterazione del metodo del simplesso
> ![[Esempio completo metodo del simplesso]]