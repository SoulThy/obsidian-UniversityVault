#ricerca-operativa #date/2024-10-09 
# Problema di Programmazione Lineare

Consideriamo il problema di programmazione lineare:

$$
\text{min } c^T x
$$

con

$$
P = \{x \in \mathbb{R}^n : Ax \geq b\}
$$

dove $P$ è non vuoto e non contiene rette ^[[[Relazione di un poliedro contenente una retta]]]. Supponiamo inoltre che il problema non sia illimitato inferiormente.

Se $\tilde{x} \in P$ non è un vertice, allora esiste un punto $\hat{x} \in P$ tale che:

$$
c^T \hat{x} \leq c^T \tilde{x}
$$

e il numero di righe di $A$, $\alpha_i^T$ con $i \in I(\hat{x})$ (i vincoli attivi in $\hat{x}$), linearmente indipendenti, è maggiore rispetto al numero di righe di $A$, $\alpha_i^T$ con $i \in I(\tilde{x})$ (i vincoli attivi in $\tilde{x}$), che sono linearmente indipendenti.

In altre parole, possiamo trovare un punto migliore ($\hat{x}$) che ottimizza ulteriormente la funzione obiettivo, attivando più vincoli.