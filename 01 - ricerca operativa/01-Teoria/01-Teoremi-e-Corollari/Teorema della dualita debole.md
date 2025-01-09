# Enunciato
Il teorema della dualita' debole ci dice che preso un [[Caratterizzazione di un problema di PL in forma standard|problema di PL in forma standard]] e il suo duale e preso:
- $x$ punto ammissibile del primale
- $\lambda$ punto ammissibile del duale
Allora risulta valere
$$
c^Tx\geq b^T\lambda
$$

>*Il Teorema ci dice che la funzione obiettivo del primale non sta mai al di sotto della funzione obiettivo del duale.*
# Dimostrazione
- $x$ ammissibile per il primale $\implies$ $Ax=b$ e anche $x\geq 0$ ([[Caratterizzazione di un problema di PL in forma standard|problema PL standard]])
- $\lambda$ ammissibile per il duale $\implies$ $\lambda^TA\leq c^T$. ([[Dualita lineare]])
Moltiplichiamo entrambi i membri per $x$:
$$
\lambda^TAx\leq c^Tx \implies c^Tx \geq b^T\lambda
$$
questo risulta sempre vero essendo $x\geq 0$, cosi dimostrando il nostro enunciato.