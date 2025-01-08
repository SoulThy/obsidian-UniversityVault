> In questo esempio passiamo al problema [[Dualita lineare|duale]] utilizzando il [[Rilassamento lagrangiano in PL]]


$$
\begin{align}
\text{min } 5x_{1}-3x_{2}+3x_{3}-4x_{4}+5x_{5}-6x_{6} \\
\lambda_{1}\to 2x_{1}-3x_{2}-x_{3}+x_{4}-5x_{5}+x_{6}=3 \\
\lambda_{2}\to -x_{1}+x_{2}+2x_{3}+2x_{4}-3x_{5}-x_{6}=1 \\
x\geq 0
\end{align}
$$
Costruiamo il duale:
$$
\begin{align}
\text{max } 3\lambda_{1}+\lambda_{2} \\
2\lambda_{1}-\lambda_{2}\leq 5 \\
-3\lambda_{1}+\lambda_{2}\leq-3 \\
-\lambda_{1}+\lambda_{2}\leq 3 \\
\lambda_{1}+2\lambda_{2}\leq -4 \\
-5\lambda_{1}-3\lambda_{2}\leq 5 \\
\lambda_{1}-\lambda_{2}\leq-6
\end{align}
$$
notiamo che si scambiano i numeri dei vincoli con il numero di variabili.