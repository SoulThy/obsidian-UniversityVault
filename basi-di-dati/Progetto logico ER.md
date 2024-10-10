#basi-di-dati #date/2024-10-07
Elenchiamo dei **passaggi di una metodologia** per tradurre correttamente un modello ER in un modello relazionale, identificando quando un'entità o una relazione debba diventare una tabella separata o essere fusa in una macroentità.
L'obiettivo è **creare un modello logico** che possa essere implementato in un database, garantendo la normalizzazione, l'integrità dei dati, e la chiarezza della struttura.   

1. Per ogni cardinalità (1,1), l'arco corrispondente "salda" due oggetti $\implies$ **macroentità**.
	*Esempio, se hai due entità "Persona" e "Indirizzo" e c'è una relazione (1,1), puoi fonderle in una singola tabella che contenga tutte le informazioni di entrambe.*
2.  Ogni arco con cardinalità (0,n) oppure (1,n) deve essere fuori da qualunque regione/macroentità e lo spigolo della relazione di questo arco viene evidenziato con una "punta". ==La "punta" sull'arco è un modo per evidenziare che c'è una relazione con molteplicità che deve essere rappresentata separatamente.==
3. Si ha una tabella relazionale per ogni:
	- **Macroentità**: Una volta create le macroentità (dove possibile), vengono trasformate in tabelle relazionali. Questo significa che avrai una tabella con tutte le colonne che derivano dalla fusione delle due entità originali.
	- **Entità (staccata)**: Se un'entità non è stata fusa in una macroentità, viene comunque rappresentata come una tabella separata.
	- **Relazione (staccata)**: Se hai una relazione che non può essere "fusa" nelle entità (come nel caso delle cardinalità (0,n) o (1,n)), allora questa relazione diventa una tabella separata per collegare le entità coinvolte. Le relazioni molti-a-molti, per esempio, richiedono sempre una tabella a parte.
4. Scelta chiave primaria con eventuale introduzione di **chiave surrogata[^1]** (solo su entità e macroentità.

[^1]**chiave surrogata**: se non esiste un attributo naturale adeguato come chiave primaria (o se la combinazione di più attributi risulterebbe inefficiente), si introduce una chiave surrogata. Questa è un identificatore univoco artificiale, ad esempio un numero ID incrementale.

>[!example] Examples
>Esempi in cui abbiamo sfruttato questa metodologia sono:
>1. [[Modello ER Universita]]
>2. [[Modello ER Assicurazioni]]
