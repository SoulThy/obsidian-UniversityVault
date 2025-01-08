>*Questo è un importantissimo teorema che ci dà un'idea di dove vanno cercate le soluzioni di programmazione lineare.*`
## Teorema
Prendiamo un problema di programmazione lineare.
$$
\begin{align}
\text{min } c^Tx \\
Ax \geq b  
\end{align}
$$
Supponiamo che P non contenga rette (^[[[Relazione di un poliedro contenente una retta]]]). Allora **una e una sola** delle seguenti opzioni è vera:
1. $P = 0$ (Poliedro vuoto, ovvero [[Definizione di problema inammissibile|problema inammissibile]])
2. Il problema è illimitato inferiormente
3. Il problema ammette soluzioni ottime e almeno una è un vertice di $P$.
## Dimostrazione
**Dimostreremo che se 1 e 2 non sono vere, allora la 3 sarà vera.** (gli altri casi sono banali)

Supponiamo di avere $P$ non vuoto e che il problema non sia illimitato inferiormente.  
Se $P$ è costituito da un solo punto $\bar{x}$, ovvero $P = \{\bar{x}\}$, allora $\bar{x}$ è un vertice (perché per definizione di vertice non possiamo trovare altri due punti ^[[[Definizione di vertice]]]).  
$\bar{x}$ è anche la soluzione del problema, infatti soddisfa la definizione di soluzione: $f(\bar{x}) \leq f(x)$ per ogni $x \in P$.

Consideriamo ora il caso in cui $P$ contenga infiniti punti. Per il [[Lemma del Miglioramento della Soluzione in PL]], che possiamo applicare poiché per ipotesi $P \neq \{0\}$, $P$ non contiene rette e il problema non è illimitato inferiormente, presa $\tilde{x} \in P$ non vertice, posso trovare $\hat{x} \in P$ tale che $c^T \hat{x} \leq c^T \tilde{x}$ (ossia che migliora la funzione obiettivo) e che abbia più vincoli attivi linearmente indipendenti di $\tilde{x}$.
Potrebbero verificarsi due casi:

1. $\hat{x}$ è un vertice
2. $\hat{x}$ non è un vertice

In ciascuno dei due casi abbiamo:
1. Non posso riapplicare il lemma (perché $\hat{x}$ è un vertice)...
2. Si può applicare di nuovo il lemma, quindi presa $\hat{x} \in P$ non vertice, posso trovare $\dot{x} \in P$ tale che $c^T \dot{x} \leq c^T \hat{x}$ e $\dot{x}$ abbia più vincoli attivi linearmente indipendenti di $\tilde{x}$.  
   Continuando questo processo, arriviamo a un punto di $P$ che è un vertice, ovvero che ha $n$ vincoli attivi linearmente indipendenti. Fino a quel punto possiamo applicare il lemma in modo ricorsivo.

^[1]: Abbiamo quindi trovato che se $\hat{x} \in P$ non è un vertice, allora posso trovare un vertice $\hat{v} \in P$ tale che $c^T \hat{v} \leq c^T \hat{x}$.

Consideriamo ora i vertici di $P$, $\{v_1, \dots, v_p\}$ (ricordiamo che il numero di vertici, $p$, è al massimo $\frac{m!}{n!(m-n)!}$).  
Indichiamo con $v^*$ il vertice tale che $c^T v^* \leq c^T v_n$ per $n = 1, \dots, p$.  
Dalla proposizione precedente ^[1] e dalla definizione di $v^*$ possiamo scrivere:
$$
c^T v^* \leq c^T \hat{v} \leq c^T \tilde{x}
$$
> *Quindi stiamo dicendo che non solo possiamo arrivare a un vertice partendo da un non vertice, ma possiamo anche trovare il vertice "migliore".*