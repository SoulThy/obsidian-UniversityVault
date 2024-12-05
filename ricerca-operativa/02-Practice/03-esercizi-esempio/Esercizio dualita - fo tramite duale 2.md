$$
\begin{align}
\text{min }2x_{1}+3x_{2} \\
x_{1}+a_{2}x_{2}\geq 1 \\
x_{2}\geq 0
\end{align}
$$
- Definire i valori di $a_{2}$ tramite la [[Dualita lineare]] affinché il problema ammetta soluzione ottima.
- Determinare il valore della funzione obiettivo all'ottimo
Scriviamo il duale utilizzando [[Regole di costruzione di un problema duale]]:
$$
\begin{align}
\text{max }\lambda \\
\lambda=2 \\
|a_{2}|\lambda\leq 3 \\
\lambda\geq 0
\end{align}
$$
Quindi
$$
|a_{2}|\lambda\leq 3 \implies|a_{2}|\cdot 2\leq 3 \implies |a_{2}| \leq \frac{3}{2}
$$
ossia:
$$
-\frac{3}{2}\leq a_{2}\leq \frac{3}{2}
$$
Affinché il problema ammetta soluzione ottima.
Il valore ottimo essendo la funzione obiettivo la seguente, sara':
$$
\text{max } \lambda \implies 2
$$