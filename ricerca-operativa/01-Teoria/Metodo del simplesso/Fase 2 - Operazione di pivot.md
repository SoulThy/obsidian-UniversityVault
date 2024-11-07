# Operazione di pivot
> L'operazione di pivot consiste nel passaggio da una [[Soluzione di base (SB)#Soluzione di Base Ammissibile (SBA)|SBA]] ad un'altra non peggiore.

Svogliamo l'operazione di pivot se sappiamo che la SBA $\bar{x}$ su cui ci troviamo non e' ottimale e inoltre il problema non e' illimitato inferiormente, queste due condizioni implicano che:
$$
\exists j\in N:\hat{c}_{j}<0 \quad \text{ e }\quad y=-A_{B}^{-1}A_{j}< 0
$$
L'idea e' simile a quella del [[#Criterio sufficiente di illimitatezza]], vogliamo spostarci da $\bar{x}$ in modo tale da essere certi di migliorare la funzione obiettivo arrivando ad una nuova SBA $\tilde{x}$.
Seguendo gli stessi passaggi descritti per il [[#Criterio sufficiente di illimitatezza]], arriviamo a dire:
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
Adesso tuttavia non abbiamo tutte le componenti di $y$ positive, infatti abbiamo detto che il criterio non e' verificato quindi esiste una componente di $y$ negativa.
Quindi adesso non possiamo dire al volo che $\tilde{x}\geq 0$ (vogliamo che sia cosi' perché $\tilde{x}$ deve essere ammissibile).

Notiamo che per garantire ammissibilita':
- $\forall i\in B:y_{i}\geq 0$ abbiamo la certezza che $\tilde{x}_{i}\geq 0$ $\forall\delta\geq 0$, ossia non ci "preoccupano" le righe' che fanno riferimento alle componenti **non** negative di $y$.
- $\forall i\in B:y_{i}< 0$ dobbiamo imporre che:
	$\tilde{x}_{i}\geq 0 \implies \bar{x}_{i}+\delta y_{i}\geq 0\implies \bar{x}_{i}-\delta |y_{i}|\geq 0$
	ossia vogliamo che
	$\delta\leq \frac{\bar{x}_{i}}{|y_{i}|}=-\frac{\bar{x}_{i}}{y_{i}}$

Adesso essendo che vale:
$$
f(\tilde{x})=f(\bar{x})+\hat{c}_{N}^T\tilde{x}_{N}=f(\bar{x})+\delta \hat{c}_{j}
$$
essendo che $\delta\geq0$ e $\hat{c}_{j}<0$ per ipotesi, se prendiamo il valore massimo di $\delta$ ($-\frac{\bar{x}_{i}}{y_{i}}$) che rispetta tutti i vincoli otterremo il massimo miglioramento della funzione obiettivo.
Ossia il nostro $\delta^*$ che vogliamo utilizzare' sara' in generale:
$$
\delta^*=min\{  -\frac{\bar{x}_{i}}{y_{i}}:y_{i} < 0,i\in B\}
$$

> [!example]- Esempio di operazione di pivot
> ![[Esempio di operazione di pivot]]

> Generalizzando,
> quando non e' soddisfatto il criterio di ottimalità ne di illimitatezza significa che esiste sicuramente una componente che possiamo "migliorare", questa componente introduce un vicolo sul $\delta$. Prendendo il $\delta$ piu' grande possibile tra i possibili da cui scegliere otteniamo il massimo miglioramento.

> [!tip]
> Se $\bar{x}$ SBA non degenere
> -  $\delta^k> 0$ in questo caso il valore della funzione obiettivo migliora
> 
> $\bar{x}$ SBA degenere 
> - $\delta^k=0$ in questo caso il valore della funzione obiettivo non migliora
> - $\delta^k > 0$ in questo caso il valore della funzione obiettivo migliora
> 
