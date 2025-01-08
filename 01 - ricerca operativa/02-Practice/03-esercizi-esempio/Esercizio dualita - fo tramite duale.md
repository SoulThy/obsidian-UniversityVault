Si consideri il problema di [[Caratterizzazione di un problema di PL|PL]]
$$
\begin{align}
\text{min } 5x_{1}-2x_{2}+3x_{3}-7x_{4} \\
2x_{1}-2x_{2}+3x_{3}+a_{4}x_{4}\geq 4 \\
x_{1},x_{2},x_{3},x_{4}\geq 0 \\
\end{align}
$$
Utilizzando la [[Dualita lineare]]
- Determinare per quali valori d $a_{4}$ il problema ammette soluzione ottime
- Determinare il valore della funzione obiettivo all'ottimo
Otteniamo il suo duale tramite [[Regole di costruzione di un problema duale]]:
$$
\begin{align}
\text{max } 4\lambda \\
2\lambda\leq 5 \\
-2\lambda \leq 2 \\
3\lambda \leq 3 \\
a_{4}\lambda\leq -7 \\
\lambda \geq 0
\end{align}
$$
Dalla seconda e terza equazione otteniamo che 
$$
\lambda =1
$$
adesso dalla quarta:
$$
a_{4}\cdot\lambda\leq -7 \implies a_{4}\leq -7
$$
La funzione obiettivo:
$$
\text{max } 4\lambda \implies 4\cdot 1 = 4
$$