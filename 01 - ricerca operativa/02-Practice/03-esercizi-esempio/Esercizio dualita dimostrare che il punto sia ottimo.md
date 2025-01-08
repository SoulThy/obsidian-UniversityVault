Utilizzando la [[Dualita lineare]] dimostrare che il punto $x^*=\begin{pmatrix}0&0&1&6\end{pmatrix}^T$ e' soluzione ottima del problema:
$$
\begin{align}
\text{min }3x_{1}-4x_{2}+2x_{3}-x_{4} \\
2x_{1}+12x_{2}+x_{4}=6 \\
x_{1}+3x_{2}+x_{3}=1 \\
x\geq 0
\end{align}
$$
Costruiamo il duale:
$$
\begin{align}
\text{max }6\lambda_{1}+1\lambda_{2} \\
2\lambda_{1}+\lambda_{2}\leq 3 \\
12\lambda_{1}+3\lambda_{2}\leq -4 \\
\lambda_{2}\leq 2 \\
\lambda_{1}\leq -1 \\
\end{align}
$$
Utilizzando le condizioni di complementarità descritte in [[Teorema degli scarti complementari]]:
$$
\begin{align}
x_{1}^*(\dots ) = 0 \implies 0\cdot(\dots)= 0 \\
x_{2}^*(\dots ) = 0 \implies 0\cdot(\dots)= 0 \\
x_{3}^*(\lambda_{2}^*-2) = 0 \implies \lambda_{2}^* =2 \\
x_{4}^*(\lambda_{1}^*+1) = 0 \implies \lambda_{1}^*=-1
\end{align}
$$
Se questi valori di $\lambda^*$ verificano le condizioni del problema duale, ossia sono ammissibili sicuramente il punto $x^*$ e' soluzione ottima del problema.
