>In questo esercizio vogliamo stabilire una soluzione di base ottimale tramite l'utilizzo del [[~) Introduzione al metodo del simplesso#Criterio sufficiente di ottimalità|criterio sufficiente di ottimalità]].

Vogliamo quindi trovare una [[Soluzione di base (SB)|SBA]] e verificare se il vettore dei coefficienti di costo ridotto $\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}$ risulta essere non negativo, se cosi fosse il criterio ci garantisce che la SBA trovata e' ottimale.
$$
\begin{align}
\text{min } -10x_{1}+20x_{2}-30x_{3}+20x_{4}+30x_{5} \\
x_{1}-5x_{2}+x_{4}-3x_{5}=2 \\
3x_{2}+x_{3}-x_{4}+2x_{5}=4 \\
x_{1},x_{2},x_{3},x_{4},x_{5}\geq 0
\end{align}
$$
Abbiamo $n=5$ e $m=2$, scriviamo la matrice $A$.
$$
A=\begin{pmatrix}
1 & -5 & 0 & 1 & -3 \\
0 & 3 & 1 & -1 & 2
\end{pmatrix}
$$
E' facile identificare subito una sotto-matrice di A la quale risulta essere matrice di base.$B=\{ 1,3 \}\implies N=\{ 2,4,5 \}$.
$$
A_{B}^{-1}=\begin{pmatrix}
1 & 0 \\
0 & 1
\end{pmatrix}\implies A_{B}^{-1}b=\begin{pmatrix}
2 \\
4
\end{pmatrix}
$$
Abbiamo quindi
$$
\bar{x}=\begin{pmatrix}
2 \\
0 \\
4 \\
0 \\
0
\end{pmatrix} \implies \text{SBA}
$$
applichiamo il criterio di ottimalita'
$$
\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}
$$
calcoliamo quindi le matrici richieste per trovare $\hat{c}_{N}^T$
$$
\begin{align}
c_{N}^T=\begin{pmatrix}
20 & 20 & 30
\end{pmatrix} \\
c_{B}^T=\begin{pmatrix}
-10 & -30
\end{pmatrix} \\
A_{N}=\begin{pmatrix}
-5 & 1 & -3 \\
3 & -1 & 2
\end{pmatrix}
\end{align}
$$
proseguendo con i calcoli otteniamo
$$
C_{N}^T=\begin{pmatrix}
60 & 0 & 60
\end{pmatrix}
$$
Essendo tutte le componenti non negative $\implies$ criterio di ottimalità soddisfatto, ossia la nostra SBA $\bar{x}$ data da $B=\{ 1,3 \}$ e' soluzione ottimale.