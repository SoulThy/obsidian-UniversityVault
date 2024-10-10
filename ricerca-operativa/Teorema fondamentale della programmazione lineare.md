#ricerca-operativa #date/2024-10-09 
Questo e' un importantissimo teorema che ci da un idea di dove vanno cercate le soluzioni di programmazione lineare.
## Teorema
Prendiamo un problema di programmazione lineare.
$$
\begin{align}
\text{min } c^Tx \\
Ax \geq b  
\end{align}
$$
Supponiamo che P non contenga rette (non ha direzioni infinite su cui muoversi). Allora **una e una sola** delle seguenti opzioni e' vera:
1. $P=0$ (Poliedro vuoto ovvero problema inammissibile)
2. Il problema e' illimitato inferiormente
3. Il problema ammette soluzioni ottime e almeno una e' un vertice di P.
## Dimostrazione
**Dimostreremo che se 1 e 2 non sono vere allora la 3 sara' vera.** (gli altri casi sono banali)

Supponiamo di avere $P$ Non vuoto e che il problema non e' illimitato inferiormente.
Se $P$ e' costituito da un solo punto $\bar{x}$ ovvero $P=\{\hat{x}\}$, allora $\hat{x}$ e' un vertice (perché per definizione di vertice non riusciamo a prendere altri due punti).
E' anche la soluzione del problema, infatti e' soddisfatta la definizione di soluzione $f(\bar{x})\leq f(\hat{x}) \forall x\in P$.

Consideriamo il caso in cui $P$ ha infiniti punti per il [[Lemma del Miglioramento della Soluzione in PL]], che possiamo considerare in quanto $P\neq {0}$ e $P$ non contiene rette e il problema non e' inferiormente illimitato. Presa un $\tilde{x} \in P$ non vertice posso trovare $\hat{x}\in P:c^T\hat{x}\leq c^T \tilde{x}$ (ossia che migliora la funzione obiettivo) e $\hat{x}$ ha piu vincoli attivi linearmente indipendenti di $\tilde{x}$.
Potrebbe accadere accadere che:
1. $\hat{x}$ e' un vertice
2. $\hat{x}$ non e' un vertice
Per ogni caso abbiamo:
1. Non posso riapplicare il lemma ($\hat{x}$ e' un vertice)...
2. Si può applicare di nuovo il lemma, quindi  $\tilde{x} \in P$ non vertice posso trovare $\dot{x}\in P:c^T\dot{x}\leq c^T \tilde{x}$ e $\dot{x}$ ha piu vincoli attivi linearmente indipendenti di $\tilde{x}$.
Quindi finché non arriviamo a un punto di P che e'un vertice, ovvero che ha $n$ vincoli attivi linearmente indipendente, possiamo applicare il lemma (in modo ricorsivo quindi).

^[1]Ovvero se $\tilde{x} \in P$ non e' un vertice, allora posso trovare un vertice $\hat{v} \in P: c^T \hat{v} \leq c^T\tilde{x}$ .

Consideriamo i vertici di $P$ $\{ v_{1},\dots,v_{p} \}$ (Ricordandoci che il numero di vertici (p) e' al piu $\frac{m!}{n!(m-n)!}$.
Indichiamo con $v*$ il vertice tale che $c^Tv* \leq c^Tv_{n}$ con $n=1,\dots,p$ .
Dalla preposizione di prima ^[1] e dalla definizione di $v*$ possiamo scrivere
$$
c^Tv* \leq c^T\hat{v} \leq c^T\tilde{x}
$$
*quindi stiamo dicendo che non solo possiamo arrivare ad un vertice partendo da un non vertice, ma e' anche possibile trovare il vertice "migliore"*