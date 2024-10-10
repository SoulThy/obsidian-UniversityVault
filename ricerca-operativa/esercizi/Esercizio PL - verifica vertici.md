$$
\begin{align}
x_{1}-x_{2}+x_{3}\leq 1 \\
x_{2}\leq 3 \\
x_{1} + x_{3} \leq 1 \\
x_{3} \leq 1 \\
x_{1}\geq 0 \\
x_{3} \geq 0
\end{align}
$$
1) Il punto $P_{1}=(1,0,0)^T$ e' un vertice?

$$
A=\begin{pmatrix}
1 & -1 & 1 \\
0 & 1 & 0 \\
1 & 0 & 1 \\
0 & 0 & 1 \\
-1 & 0 & 0 \\
0 & 0 & -1
\end{pmatrix}\begin{align}
^1 \\
^2 \\
^3 \\
^4 \\
^5 \\
^6 \\
\end{align}
$$
Verifichiamo se $P_{1}\in P$ ossia se sostituendolo, verifica tutti i vincoli. Nel nostro caso e' veloce verificare che $P_{1}\in P$.
Adesso prendiamo l'insieme dei vincoli attivi. Ossia $I(P_{1})=\{ 1,3,6 \}$. Se avremo $3$ (essendo nel nostro caso $n=3$ dimensione dello spazio) vincoli attivi linearmente indipendenti allora $P_{1}$ sara' un vertice. Per verificare che sono linearmente indipendenti ne calcoliamo il determinante.
$$
\det\begin{pmatrix}
1 & -1 & 1 \\
1 & 0 & 1 \\
0 & 0 & -1
\end{pmatrix}\neq 0 \implies P_{1}\text{ vertice}
$$