>In questo esempio viene richiesto di passare tramite il metodo di pivot ad una soluzione migliore di quella di partenza.

$$
\begin{align}
\text{min } 10x_{1}-x_{2}+x_{3}+7x_{4}  \\
x_{1}+x_{3}+2x_{4}=6 \\
x_{2}+x_{3}+7x_{4}=8 \\
x\geq 0
\end{align}
$$
Abbiamo
$$
A=\begin{pmatrix}
1 & 0 & 1 & 2 \\
0 & 1 & 1 & 7
\end{pmatrix}
$$
Prendiamo
$$
B=\{ 1,2 \};N=\{ 3,4 \}
$$
calcoliamo $\bar{x}$
$$
\bar{x}_{B}=A_{B}^{-1}b=\begin{pmatrix}
6 \\
8
\end{pmatrix}\implies \bar{x}=\begin{pmatrix}
6 \\
8 \\
0 \\
0
\end{pmatrix}\implies(SBA)
$$
calcoliamo il vettore dei coefficienti dei costi ridotti $\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}$
$$
\hat{c}_{N}^T=\begin{pmatrix}
1 & 7
\end{pmatrix}-\begin{pmatrix}
10 & -1
\end{pmatrix}\begin{pmatrix}
1 & 2 \\
1 & 7
\end{pmatrix}=\begin{pmatrix}
-8 & -6
\end{pmatrix}
$$
che avendo componenti negative implica che il criterio di ottimalita' non e' soddisfatto per cui e' possibile che si tratti di un problema illimitato inferiormente. Verifichiamolo.
Essendo sia la prima componente ($-8$) relativa a $j=3$ che la seconda componente $(-6)$ relativa a $j=4$ negativa, ne scelgo una per verificare il criterio di illimitatezza.
Prendiamo per esempio $j=4$
$$
y=-A_{B}^{-1}A_{4}=\begin{pmatrix}
-2 \\
-7
\end{pmatrix}
$$
Notiamo che anche il criterio di illimitatezza non e' soddisfatto.
Genero quindi una nuova SBA $\tilde{x}$ tramite il metodo di pivot.
$$
\delta^*=min\{  -\frac{\bar{x}_{i}}{y_{i}}:y_{i} < 0,i\in B\}=min\left\{  -\frac{\bar{x}_{1}}{y_{1}},-\frac{\bar{x}_{2}}{y_{2}}  \right\}=min\left\{  \frac{6}{2}, \frac{8}{7}  \right\}=\frac{8}{7}
$$
Risulta essere il minimo il valore che fa riferimento a $i^*=2$.

$$
\tilde{x}=\begin{pmatrix}
6 \\
8 \\
0 \\
0
\end{pmatrix}+\frac{8}{7}\begin{pmatrix}
-2 \\
-7 \\
0 \\
1
\end{pmatrix}=\begin{pmatrix}
\frac{26}{7} \\
0 \\
0 \\
\frac{8}{7}
\end{pmatrix}
$$
Notiamo che e' uscita dalla base la seconda componente, infatti $(i^*=2)$.
Abbiamo adesso 
$$
\tilde{B}=\{ 1,4 \};\tilde{N}=\{ 3,2 \}
$$
E di quanto abbiamo migliorato la nostra funzione obiettivo?
$$
f(\tilde{x})=f(\bar{x})+\hat{c}_{j}\delta=52-6\cdot \frac{8}{7}<52
$$
Abbiamo migliorato la soluzione spostandoci su un altra SBA tramite l'operazione di pivot ma non e' detto che questa sia la soluzione ottimale, dovremmo iterare il criterio di ottimalita' per assicurarci di questo.