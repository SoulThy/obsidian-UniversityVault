Fa riferimento all'esercizio numero 2 all'interno del file [[esercizi30ottobre.pdf]].

Dobbiamo determinare la variabile fuori base che comporta il maggior decremento entrando in base.
Ricordiamo che vale
$$
f(\tilde{x})=f(\bar{x})+\hat{c}_{j}\delta
$$
Vogliamo quindi stabilire quale e' il $j$ che dara' il  $\hat{c}_{j}\delta$ minore.
I $j$ da cui possiamo scegliere li prendiamo osservando il vettore dei coefficienti dei costi ridotti che ci viene dato:
$$
\hat{c}_{N}^T=\begin{pmatrix}
-3 & -4 & -1
\end{pmatrix}
$$
Dove 
- $j=5 \implies\hat{c}_{5}=-3$
- $j=1\implies\hat{c}_{1}=-4$
- $j=6\implies c_{6}=-1$
Dobbiamo trovare i corrispettivi $\delta^*$. 
$$
\delta^*=min\{  -\frac{\bar{x}_{i}}{y_{i}}:y_{i} < 0,i\in B\}
$$
Dobbiamo quindi stabilire i vari $y$ che otteniamo scegliendo i vari $j$.
Osservando la matrice $A_{B}^{-1}A_{N}$ possiamo stabilire
- $j = 5 \implies \delta^*=min\left\{  -\frac{2}{-2}, -\frac{2}{-1}  \right\}=1\implies \hat{c}_{5}\delta^*=-3$ 
- $j=1\implies\delta^*=min\left\{  -\frac{3}{-1}, -\frac{2}{-2}  \right\}=1\implies \hat{c}_{1}\delta^*=-4$
- $j=6 \implies \delta^*=min\left\{  -\frac{2}{-1}, -\frac{2}{-4}  \right\}=\frac{1}{2}\implies \hat{c}_{6}\delta^*=-\frac{1}{2}$
per $j=1$, ossia facendo entrare la prima variabile in base ottengo il decremento maggiore.