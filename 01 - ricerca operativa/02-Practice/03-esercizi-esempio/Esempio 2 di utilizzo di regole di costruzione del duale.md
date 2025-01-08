Dato un generico [[Caratterizzazione di un problema di PL|problema di PL]] utilizzare le [[Regole di costruzione di un problema duale]] per ottenere il suo duale.
$$
\begin{align}
\text{min }-6x_{1}-6x_{2}+2x_{3}-5x_{4}+4x_{5}-3x_{6} \\
\lambda_{1}\to5x_{1}-4x_{2}-x_{3}+2x_{4}-x_{5}+x_{6}=3 \\
\lambda_{2}\to6x_{1}-3x_{2}+x_{3}-x_{4}+2x_{5}+2x_{6}\geq -5 \\
x_{1},x_{3},x_{6}\geq 0
\end{align}
$$
il duale risulterà essere.
$$
\begin{align}
\text{max } 3\lambda_{1}-5\lambda_{2} \\
5\lambda_{1}+6\lambda_{2}\leq-1 \\
-4\lambda_{1}-3\lambda_{2}= -7\\
-\lambda_{1}+\lambda_{2}\leq 2 \\
2\lambda_{1}-\lambda_{1}=-5 \\
-\lambda_{1}+2\lambda_{2}=4 \\
\lambda_{1}+2\lambda_{2} \leq -3 \\
\lambda_{2}\geq 0
\end{align}
$$
## Collegamenti
Altri esercizi di costruzione del duale:
- [[Esempio 1 di utilizzo di regole di costruzione del duale]]