# Enunciato
Prendiamo il [[Caratterizzazione di un problema di PL in forma standard|problema di PL in forma standard]] con il suo [[Dualita lineare|duale]], il teorema ci dice che 
$\bar{x}$ e $\bar{\lambda}$ sono rispettivamente soluzioni ottime del problema primale e del problema duale se e solo se:
$$
\begin{align}
\text{1)}&A\bar{x}=b,\bar{x}\geq 0 \text{ ammissibilita primale}\\
\text{2)}&\bar{\lambda}^TA\leq c^T \text{ ammissibilita duale}\\
\text{3)}&c^T\bar{x}=b^T\bar{\lambda} \text{ assenza di gap di dualita}
\end{align}
$$
# Dimostrazione condizione sufficiente
> Vogliamo dimostrare che se vale 1), 2), 3) $\implies$ vale il teorema, ossia $\bar{x}$ e $\bar{\lambda}$ sono soluzioni ottime del problema primale e duale.

Possiamo utilizzare il [[Corollario della dualità debole]] e quindi la condizione sufficiente sara' subito dimostrata.
# Dimostrazione condizione necessaria
> Vogliamo dimostrare che $\bar{x}$ e $\bar{\lambda}$ soluzioni ottime $\implies$ valgono la 1), 2), 3).

Per ipotesi le nostre soluzioni sono ottime e quindi necessariamente ammissibili.
- $\bar{x}$ ammissibile $\implies$ vale la 1) 
- $\bar{\lambda}$ ammissibile $\implies$ vale la 2)
- Dal [[Teorema della dualita forte]] $\implies$ vale la 3)