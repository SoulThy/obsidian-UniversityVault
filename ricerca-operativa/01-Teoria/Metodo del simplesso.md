>Il metodo del simplesso è un algoritmo utilizzato per risolvere problemi di **ottimizzazione lineare**.

Questo metodo e' diviso in 2 fasi principali.
## Fase 1
Verifica se l'insieme ammissibile e' vuoto (ossia non esistono soluzioni che soddisfano tutti i vincoli del problema) oppure no. Nel caso in l'insieme ammissibile risulti non vuoto la *Fase 1* restituisce una soluzione di base ammissibile ([[Soluzione di base (SB)#Soluzione di Base Ammissibile (SBA)|SBA]]) iniziale .

> Questa fase non e' altro che la *Fase 2* applicata ad un problema "ausiliario".
> Noi studieremo la *Fase 2*.

## Fase 2
A partire dalla soluzione di base ammissibile ottenuta dalla *Fase 1*, visitiamo altre SBA fino a determinare una soluzione ottima del problema. In alternativa, durante il processo, potrebbe emergere che ci troviamo in un caso di [[Definizione di problema illimitato (inferiormente)|problema illimitato]].
Vediamo quindi i seguenti criteri: 
- ==Criterio sufficiente di ottimalità==: ci permettera' di stabilire se una SBA e' ottimale, ossia soluzione del problema.
- ==Criterio sufficiente di illimitatezza==: ci permettera' di stabilire se il problema risulta essere illimitato


> [!example]- Esempio di ricerca tramite "forza bruta" della soluzione ottima.
> ![[Esempio di confronto tra SBA per soluzione ottimale]]

### Criterio sufficiente di ottimalità
Sia $\bar{x}$ una SBA ossia $\bar{x}_{B}=A_{B}^{-1}b$ e $\bar{x}_{N}=0$ e dato il [[Caratterizzazione di un problema di PL in forma standard|problema in forma standard]]:
$$
\begin{align}
\text{min }c^Tx \\
Ax=b \\
x\geq 0
\end{align}
$$
La funzione obiettivo (nella forma descritta in [[Soluzione di base (SB)]]) calcolata nel punto $\bar{x}$ risulta essere
$$
f(\bar{x})=c_{B}^T\bar{x}_{B}+c_{N}^T\bar{x}_{N}=c_{B}^TA_{B}^{-1}b
$$
Sia invece $x$ un generico punto ammissibile quindi vale che
$$
Ax=b\implies \begin{pmatrix}
A_{B} & A_{n}
\end{pmatrix}
\begin{pmatrix}
x_{B} \\
x_{N}
\end{pmatrix}=b \implies x_{B}=A_{B}^{-1}b-A_{B}^{-1}A_{N}x_{N}
$$
questa ultima relazione la sostituiamo nell'equazione della funzione obiettivo
$$
\begin{align}
f(x)=c_{B}^Tx_{B}+c_{N}^Tx_{N}=c_{B}^T(A_{B}^{-1}b-A_{B}^{-1}A_{N}x_{N})+c_{N}^Tx_{N}= \\
=c_{B}^TA_{B}^{-1}b-c_{B}^TA_{B}^{-1}A_{N}x_{N}+c_{N}^Tx_{N}=f(\bar{x})+(c_{N}^T-c_{B}^TA_{B}^{-1}A_{N})x_{N}
\end{align}
$$
Cosi ottenendo la seguente relazione
$$
f(x)=f(\bar{x})+(c_{N}^T-c_{B}^TA_{B}^{-1}A_{N})x_{N}
$$
Dove chiameremo vettore dei coefficienti di costo ridotto: 
$$
\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}
$$
ottenendo in fine
$$
f(x)=f(\bar{x})+\hat{c}_{N}^Tx_{N}
$$
>Questo mi dice una cosa importante. Una soluzione ammissibile generica puo' essere ottenuta a partire da una SBA generica calcolando $\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}$.

Adesso notiamo che se $\hat{c}_{N}\geq 0 \implies \hat{c}_{N}x_{N}\geq 0$ dato che per ipotesi $x\geq 0$, quindi possiamo dire
$$
f(x)=f(\bar{x})+\hat{c}_{N}x_{N}\geq f(\bar{x})
$$
> Quello che stiamo dicendo e' che se il vettore dei coefficienti di costo ridotto risulta essere tutto non negativo allora la $f(x)\geq f(\bar{x})$, quindi la funzione obiettivo $f(x)$ non sara' mai migliore della $f(\bar{x})$, questo implica che la nostra $\bar{x}$ e' una SBA soluzione ottima.


> [!example]- Esempio di verifica della soluzione ottimale tramite il criterio sufficiente di ottimalità.
> ![[Esempio di utilizzo del criterio di ottimalita]]


### Criterio sufficiente di illimitatezza
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
f(\tilde{x})=f(\bar{x})+\delta \hat{c}_{j}
$$
dove $\hat{c}_{j}$ e' negativo, e $\delta$ puo' crescere a piacere, possiamo sempre "migliorare" la nostra funzione obiettivo.

> Quindi il risultato che abbiamo trovato e' il seguente:
> Se il criterio di ottimalita' non e' soddisfatto e data una $y$ della forma $y=-A_{B}^{-1}A_{j}$, con tutte le componenti non negative, allora e' possibile "migliorare" infinitamente la nostra funzione obiettivo, questo implica che il nostro problema e' illimitato inferiormente.


> [!example]- Esempio in cui verifichiamo l'illimitatezza del problema tramite il criterio sufficiente di illimitatezza
> ![[Esempio di utilizzo del criterio di illimitatezza]]

