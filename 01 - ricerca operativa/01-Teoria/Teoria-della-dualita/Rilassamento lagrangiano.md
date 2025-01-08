Il **rilassamento lagrangiano** è una tecnica di [[Rilassamento]] che utilizza i moltiplicatori di Lagrange per "rilassare" alcuni dei vincoli del problema. In questo caso, certi vincoli difficili vengono incorporati direttamente nella funzione obiettivo, associando a ciascuno di essi un moltiplicatore lagrangiano. Questo trasforma il problema originale in uno più facile da risolvere, pur mantenendo informazioni preziose sui vincoli rilassati.

## Costruzione del Rilassamento Lagrangiano

Supponiamo di avere un problema (I) nella forma:
$$
\begin{align}
\min f(x) \\
g(x)\geq 0 \\
x \in S
\end{align}
$$
Dato un vettore $\lambda \in \mathbb{R}^m$ con $\lambda \geq 0$, si ha che il problema 
$$
L(\lambda) = \text{min }f(x)-\lambda^Tg(x)
$$
costituisce un **rilassamento lagrangiano**.

Notare che questo rispetta la definizione di rilassamento, l'insieme ammissibile del problema primale è contenuto in quello duale e inoltre vale che 
$$
f(x)-\lambda^Tg(x) \leq f(x) \quad \forall x \in S;g(x)\geq 0
$$