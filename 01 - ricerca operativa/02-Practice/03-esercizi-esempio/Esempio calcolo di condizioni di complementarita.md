> In questo esempio di vuole mostrare il calcolo delle condizioni di complementarità introdotte in [[Teorema degli scarti complementari]]

Calcolare le condizioni di complementarità
$$
\begin{align}
\text{min }3x_{1}+2x_{2}-3x_{3}+x_{4}-x_{5} \\
4x_{1}-2x_{2}+3x_{3}-x_{4}+2x_{5}=3 \\
-x_{1}-x_{2}+x_{3}+2x_{4}-x_{5}=4 \\
x_{1},x_{2},x_{3},x_{4},x_{5} \geq 0
\end{align}
$$
Costruiamo il suo duale
$$
\begin{align}
\text{max }3\lambda_{1}+4\lambda_{2} \\
4\lambda_{1}-\lambda_{2}\leq 3 \\
-2\lambda_{1}-\lambda_{2}\leq 2 \\
3\lambda_{1}+\lambda_{2}\leq -3 \\
-\lambda_{1}+2\lambda_{2} \leq 1 \\
2\lambda_{1} - \lambda_{2} \leq -1
\end{align}
$$
Le condizioni di complementarità sono:
$$
\begin{align}
x_{1}(4\lambda_{1}-\lambda_{2}-3) = 0 \\
x_{2}(-2\lambda_{1}-\lambda_{2}-2) = 0 \\
x_{3}(3\lambda_{1}+\lambda_{2}-3) = 0 \\
x_{4}(-\lambda_{1}-2\lambda_{2}-1) = 0 \\
x_{5}(2\lambda_{1}-\lambda_{2} +1) = 0
\end{align}
$$
