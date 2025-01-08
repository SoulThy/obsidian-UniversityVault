# Traccia
Definire un esempio numerico con $n=5$ e $m=3$ in cui da una [[Soluzione di base (SB)#Soluzione di Base Ammissibile (SBA)|SBA]] non degenere si passa, con un'iterazione della fase 2, a una SBA degenere.
Ossia dobbiamo definire $B,N,A_{B}^{-1}b,A_{B}^{-1}A_{N},\hat{c}_{N}^T$.

---
# Soluzione
^[Per la teoria guardare [[Fase 2 - Operazione di pivot]]]
Dato che $n=5$ e $m = 3$ e ricordando che la dimensione di $B$ e' $m$ e la dimensione di $N$ e' $n-m$, possiamo subito definire le matrici $B$ ed $N$, per esempio:
$$
B=\{ 1,2,3 \};N=\{ 4,5 \}
$$
sappiamo che la formula della nostra $SBA$ degenere sara' sempre data da
$$
\tilde{x}=\bar{x}+\delta d
$$
dove se prendo per esempio come $SBA$ non degenere
$$
\bar{x}=\begin{pmatrix}
1 \\
1 \\
1 \\
0 \\
0
\end{pmatrix}
$$
scrivendo cio' abbiamo quindi assunto che 
$$
A_{B}^{-1}b=\begin{pmatrix}
1 \\
1 \\
1 \\
\end{pmatrix}
$$
ipotizzo di avere un un vettore dei coefficienti dei costi ridotti della forma
$$
\hat{c}_{N}^T=\begin{pmatrix}
-1 & 0
\end{pmatrix}
$$
l'importante e' che una componente sia negativa, questo mi assicura che il criterio di ottimalita' non e' verificato e quindi possiamo procedere alla fase $II$.
Notiamo che avendo scelto la prima componente come negativa significa che andremo a "muoverci" sulla $j-esima$ componente, ossia:
$$
\tilde{x}=\begin{pmatrix}
1 \\
1 \\
1 \\
0 \\
0
\end{pmatrix}+\delta \begin{pmatrix}
 \\
y \\
 \\
1 \\
0
\end{pmatrix}
$$
Per passare da una soluzione di base ammissibile (SBA) non degenere a una degenere, possiamo procedere definendo un vettore $y$ che introduca uno zero in una componente di base. Per ottenere ciò, è fondamentale che vi siano valori di $\delta$ ripetuti all'interno di:
$$
\min\left\{ -\frac{\bar{x}_{i}}{y_{i}} : y_{i} < 0, i \in B \right\}.
$$
Quando abbiamo una soluzione $\delta^*$ associata in modo univoco a un certo indice $i^*$, il processo di pivoting fa sì che una componente della base esca ($i^*$) e un'altra componente vi entri (la $j-esima$) senza creare uno zero nella base. In questo caso, la componente che diventa zero passerà automaticamente fuori base.

Tuttavia, se i valori di $\delta$ non sono in relazione biunivoca, l'operazione comporta l’ingresso di una nuova variabile di base e l'uscita di un’altra, e in più una componente di base si annullerà, precisamente quella che rompe la corrispondenza biunivoca per il valore $\delta^*$. Questo annullamento è ciò che introduce la degenerazione nella soluzione di base.
$$
y=-A_{B}^{-1}A_{j}=-A_{B}^{-1}A_{4}=\begin{pmatrix}
-1 \\
-1 \\
-1
\end{pmatrix}\implies \delta^*=min\{ 1,1,1 \}
$$
Se scegliamo $i^*=1$, abbiamo quindi
$$
\tilde{x}=\begin{pmatrix}
1 \\
1 \\
1 \\
0 \\
0
\end{pmatrix}+\delta^* \begin{pmatrix}
-1 \\
-1 \\
-1 \\
1 \\
0
\end{pmatrix}=\begin{pmatrix}
0 \\
0 \\
0 \\
1 \\
0
\end{pmatrix}\begin{align}
\leftarrow N \\
\leftarrow B \\
\leftarrow B \\
\leftarrow B \\
\leftarrow N
\end{align}
$$
dove avendo valori nulli tra le componenti di base $\implies SBA$ degenere.