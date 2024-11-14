# Criterio sufficiente di illimitatezza
Sia $\bar{x}$ una SBA e supponiamo che il criterio di ottimalita' non sia soddisfatto $\implies$ esiste almeno un coefficiente di costo ridotto
$$
\hat{c}_{j}<0\quad j \in N
$$
L'idea e' quella che posso prendere un nuovo punto ammissibile $\tilde{x}$ che abbia tutte le variabili fuori base nulle tranne quella corrispondente a $j$.

Allora facendo cosi otteniamo
$$
f(\tilde{x})=f(\bar{x})+\hat{c}_{j}\cdot \tilde{x}_{j}<f(\bar{x})
$$
ossia $\tilde{x}$ migliora la funzione obiettivo ($\bar{x}$ e' una SBA).
Adesso vogliamo verificare se possiamo continuare a fare scorrere $\tilde{x}$ lungo una direzione $d$ che andra' a migliorare sempre la funzione obiettivo.
Se questo fosse possibile implicherebbe che il problema e' illimitato.

$$
\tilde{x}=\bar{x}+\delta d=\begin{pmatrix}
\bar{x}_{B} \\
0_{N}
\end{pmatrix}+\delta \begin{pmatrix}
d_{B} \\
d_{N}
\end{pmatrix}=\bar{x}+\delta \begin{pmatrix}
y \\
0 \\
\vdots \\
1 \\
0 \\
\vdots \\
0
\end{pmatrix}
$$
Abbiamo associato a $d_{N}$ una direzione specifica, quella in cui dobbiamo muoverci perche' siamo certi che la funzione obiettivo migliorerà (ponendo a $1$ la componente $j-esima \in N$).
Essendo che stiamo muovendo $\tilde{x}$ e vogliamo che resti ammissibile, associamo a $d_{B}$ un generico vettore $y$ che si "adatterà" allo spostamento su $d_{N}$ per mantenere i vincoli verificati.
Essendo che $\tilde{x}$ deve restare ammissibile significa che:
$$
\begin{align}
A\tilde{x}=b \\
\tilde{x}\geq 0
\end{align}
$$
Moltiplichiamo per A ambo i membri dell'equazione precedente
$$
A\tilde{x}=A\bar{x}+\delta(A_{B}d_{B}+A_{N}d_{N})=A\bar{x}+\delta(A_{B}y+A_{j})=b+\delta(A_{B}y+A_{j})
$$
Risulta che $\tilde{x}$ per essere ammissibile dobbiamo avere
$$
A_{B}y+A_{j}=0\implies y=-A_{B}^{-1}A_{j}
$$
inoltre dobbiamo verificare che $\tilde{x}$ non violi il vincolo di non negativita'.
$$
\tilde{x}=\bar{x}+\delta \begin{pmatrix}
y \\
0 \\
\vdots \\
1 \\
\vdots \\
0
\end{pmatrix}=\begin{pmatrix}
\bar{x}_{B}+\delta y \\
0 \\
\vdots \\
\delta \\
\vdots \\
0
\end{pmatrix}
$$
Abbiamo $\delta > 0$, $\bar{x}_{B}\geq 0_{m}$ essendo SBA. 
Supponiamo adesso che $y\geq 0_{m}$, allora abbiamo che
$$
\tilde{x}_{i}=\bar{x}_{i}+\delta y_{i} \geq 0 \quad \forall\delta
$$
il punto $\tilde{x}$ e' quindi ammissibile per ogni $\delta \geq 0$.
Ed essendo che 
$$
f(\tilde{x})=f(\bar{x})+\hat{c}_{N}^T\tilde{x}_{N}=f(\bar{x})+\delta \hat{c}_{j}
$$
dove $\hat{c}_{j}$ e' negativo, e $\delta$ puo' crescere a piacere, possiamo sempre "migliorare" la nostra funzione obiettivo.

> Quindi il risultato che abbiamo trovato e' il seguente:
> Se il criterio di ottimalita' non e' soddisfatto e data una $y$ della forma $y=-A_{B}^{-1}A_{j}$, con tutte le componenti non negative, allora e' possibile "migliorare" infinitamente la nostra funzione obiettivo, questo implica che il nostro problema e' illimitato inferiormente.


> [!example]- Esempio in cui verifichiamo l'illimitatezza del problema tramite il criterio sufficiente di illimitatezza
> ![[Esempio di utilizzo del criterio di illimitatezza]]
