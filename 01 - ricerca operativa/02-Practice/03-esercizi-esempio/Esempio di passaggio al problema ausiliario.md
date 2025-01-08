> In questo esempio vogliamo passare da un problema in forma standard, all'equivalente problema ausiliario.

$$
\begin{aligned}
&\min2x_{1}+4x_{2}-3x_{3}+6x_{4}-x_{5} \\
&2x_{1}+4x_{2}+2x_{3}+8x_{4}-10x_{5}=6 \\
&-3x_1+3x_2-4x_3+5x_4-2x_5=3 \\
&x\geq0
\end{aligned}
$$
Per passare all'equivalente problema ausiliario, introduciamo due variabili artificiali, una per ciascun vincolo presente nel problema originario.
$$
\begin{aligned}
&\min\alpha_{1}+\alpha_{2} \\
&2x_{1}+4x_{2}+2x_{3}+8x_{4}-10x_{5}+\alpha_{1}=6 \\
&-3x_{1}+3x_{2}-4x_{3}+5x_{4}-2x_{5}+\alpha_{2}=3 \\
&x\geq0,\alpha_{1},\alpha_{2}\geq0
\end{aligned}
$$