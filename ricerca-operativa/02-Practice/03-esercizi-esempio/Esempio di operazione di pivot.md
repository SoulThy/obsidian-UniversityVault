Ipotizziamo di avere:
$$
B=\{ 5,3 \};N=\{ 2,4,1 \}
$$
$$
\begin{align}
A_{B}^{-1}b & =\begin{pmatrix}
4 \\
2
\end{pmatrix} \\
\hat{c}_{N}^T & =\begin{pmatrix}
-3 & 1 & 0
\end{pmatrix} \\
A_{B}^{-1}A_{N} & =\begin{pmatrix}
2 & -4 & 1 \\
-1 & 2 & -1
\end{pmatrix}
\end{align}
$$
ci viene data la seguente SBA
$$
\bar{x}=\begin{pmatrix}
0 \\
0 \\
2 \\
0 \\
4
\end{pmatrix}
$$
con 
$$
y=-A_{B}^{-1}A_{j}=\begin{pmatrix}
-2 \\
1
\end{pmatrix}
$$
dove $j=1$ (prima colonna) in quanto la prima colonna di $\hat{c}_{N}^T$ ha la componente negativa.
Notiamo che non e' verificato il criterio di ottimalita e neanche quello di illimitatezza.
Cerchiamo di migliorare la SBA tramite l'operazione di pivot
$$
\tilde{x}=\bar{x}+\delta d=\begin{pmatrix}
0 \\
0 \\
2 \\
0 \\
4
\end{pmatrix}+\delta \begin{pmatrix}
0 \\
1 \\
1 \\
0 \\
-2
\end{pmatrix}=\begin{pmatrix}
0 \\
\delta \\
2+\delta \\
0 \\
4-2\delta
\end{pmatrix} \geq 0
$$
Dove notiamo che abbiamo messo gli elementi di $y$ nella posizione $5$ e $3$ (essendo $B=\{ 5,3 \}$).

L'unica soluzione che ci introduce un vicolo e' l'ultima, in quanto e' l'unica che potrebbe rendere la nostra soluzione di base non ammissibile.
$$
4-2\delta \geq 0 \implies \delta\leq 2
$$
quindi 
$$
f(\tilde{x})=f(\bar{x})+\hat{c}_{j}\delta=f(\bar{x})-3\delta=f(\bar{x})-6
$$
dove scegliendo il delta piu' grande possibile, ossia $\delta = 2$ miglioriamo la nostra funzione obiettivo di $'6'$.
