Partendo da un problema di PL costruiamo il suo [[Rilassamento lagrangiano]] 
$$
\begin{align}
\text{min } c^Tx \\
Ax=b \\
x\geq 0
\end{align}
$$
possiamo scrivere il rilassamento lagrangiano come
$$
L(\lambda)=\lambda^Tb+min(c^T-\lambda^TA)x
$$
se adesso prendiamo
$$
c^T-\lambda^TA\geq 0\implies\lambda^TA\leq c^T
$$
abbiamo il minimo rispetto $x^*=0$ essendo $x\geq 0$ e quindi abbiamo
$$
L(\lambda)=\lambda^Tb
$$
Invece prendendo
$$
c_{i}-\lambda^TA_{i} < 0 \implies L(\lambda) = - \infty
$$
ossia il problema risulta illimitato.
$$
c_{i}-\lambda^TA_{i} < 0 \implies L(\lambda) = - \infty
$$
> [!info] Il migliore rilassamento risulta essere
> $$
> max_{\lambda}\quad L(\lambda)
> $$
> Ossia vogliamo i moltiplicatori $\lambda$ che massimizzano la funzione lagrangiana $L(\lambda)$ in modo tale da ottenere il migliore limite inferiore possibile.
> Massimizzare $L(\lambda)$ ci consente di stimare nel modo piu' accurato il nostro problema primario. 
> In molti casi il $max_{\lambda}\quad L(\lambda)$ coincide con la soluzione ottimale del problema primale.
