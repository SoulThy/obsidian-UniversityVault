- [[#Teorema degli scarti complementari caso standard]]
- [[#Teorema degli scarti complementari caso non standard]]
# Teorema degli scarti complementari caso standard
## Enunciato
Prendiamo il [[Caratterizzazione di un problema di PL in forma standard|problema di PL in forma standard]] con il suo [[Dualita lineare|duale]].
Il teorema ci dice che $\bar{x}$ e $\bar{\lambda}$ sono soluzioni ottime dei rispettivi problemi se e solo se
$$
\begin{align}
\text{1)}&A\bar{x}=b,\bar{x}\geq 0 \\
\text{2)}&\bar{\lambda}^TA\leq c^T \\
\text{3)}&\bar{x}_{i}(\bar{\lambda}^TA_{i}-c_{i})=0 \quad i=1,\dots,n
\end{align}
$$
La condizione $(3)$ viene chiamata **condizione di complementarità**.
Queste condizioni risultano essere quasi identiche a quelle delle [[Condizioni di ottimalita nella PL]], infatti in questo caso la terza condizione garantisce indirettamente l'assenza di gap di dualità.

> Le condizioni di complementarità implicano che nessuna risorsa è sprecata o utilizzata in modo inefficiente. Ossia la soluzione e' ottima.
## Dimostrazione
Riscrivendo in vincolo di disuguaglianza ([[Caratterizzazione di un problema di PL in forma standard#Trasformazione in forma standard|Trasformazione in forma standard]]), otteniamo
$$
\bar{\lambda}^TA\leq c^T \implies \lambda^TA+y^T=c^T\implies\lambda^TAx+y^Tx=c^Tx \implies \bar{\lambda}^TA\bar{x}+\bar{y}^T\bar{x}=c^T\bar{x}
$$
Dove $y\geq 0$.
Essendo il problema primale in forma standard abbiamo che $Ax=b$:
$$
\implies\bar{\lambda}^Tb+\bar{y}^T\bar{x}=c^T\bar{x}
$$
dove essendo che $c^T\bar{x}=b^T\bar{\lambda}$ per le condizioni, resta
$$
\bar{y}^T\bar{x}=0
$$
che possiamo riscrivere come 
$$
\sum_{i=1}^{n} \bar{y}_{i}\bar{x}_{i} = 0
$$
E dato che $y_{i},x_{i}\geq 0$ vale:
$$
\bar{y}_{i}\bar{x}_{i} = 0
$$
Dalla prima equazione:
$$
\bar{\lambda}^TA+\bar{y}^T=c^T\implies \bar{y}_{i} = c_{i}-\bar{\lambda}^TA_{i}
$$
per cui
$$
\bar{x}_{i}(\bar{\lambda}^TA_{i}-c_{i})=0
$$

> [!example]- Esempio di calcolo delle condizioni di complementarita
> ![[Esempio calcolo di condizioni di complementarita]]

# Teorema degli scarti complementari caso non standard
## Enunciato
Prendiamo il [[Caratterizzazione di un problema di PL|problema di PL in forma non standard]] con il suo [[Dualita lineare|duale]].
$\bar{x}$ e $\bar{\lambda}$ sono soluzioni ottime dei rispettivi problemi se e solo se
$$
\begin{align}
\text{1)}&A\bar{x}=b,\bar{x}\geq 0 \\
\text{2)}&\bar{\lambda}^TA\leq c^T \\
\text{3)}&\bar{x}_{i}(\bar{\lambda}^TA_{i}-c_{i})=0 \quad i=1,\dots,n \\
\text{3bis)}&\bar{\lambda}_{j}(a_{j}^T\bar{x}-b_{j})=0 \quad j=1,\dots,m
\end{align}
$$
## Dimostrazione
Essendo il problema primale non in forma standard (e utilizzando [[Caratterizzazione di un problema di PL in forma standard#Trasformazione in forma standard|Trasformazione in forma standard]]):
$$
\begin{align}
Ax\geq b  & \implies Ax-z=b  & \implies\lambda^TAx-\lambda^Tz=\lambda^Tb \\ 
\lambda^TA\leq c^T  &  \implies \lambda^TA +y^T=c^T & \implies\lambda^TAx+y^Tx=c^Tx
\end{align}
$$
con $z\geq 0$ e $y\geq 0$:
Sottraendo membro a membro:
$$
\implies y^Tx+\lambda^Tz=c^Tx-\lambda^Tb
$$
Introducendo adesso $\bar{x},\bar{\lambda},\bar{z},\bar{y}$, ed che $\bar{x}$ e $\bar{\lambda}$ sono soluzioni ottime se e solo se $c^T\bar{x}=b^T\bar{\lambda}$ allora
$$
 \bar{y}^T\bar{x}+\bar{\lambda}^T\bar{z}=0\implies\bar{y}^T\bar{x}+\bar{\lambda}^T\bar{z}=\sum_{i=1}^n\bar{x}_i\bar{y}_i+\sum_{j=1}^m\bar{\lambda}_j\bar{z}_j=0
$$
Ricordando che $\bar{x}_{i},\bar{y}_{i},\bar{\lambda}_{j},\bar{z}_{j} \geq 0$:
$$
\begin{array}
{ll}\bar{x}_i\bar{y}_i=0 & i=1,\ldots,n \\
\bar{\lambda}_j\bar{z}_j=0 & j=1,\ldots,m
\end{array}
$$
Ed essendo che 
$$
\begin{equation}
\begin{cases}
\bar{y}_{i}=c_{i}-\bar{\lambda}^TA_{i} \\
\bar{z}_{j}=a_{j}^T\bar{x}-b_{j}
\end{cases}  \implies
\begin{cases}
\bar{x}_{i}(\bar{\lambda}^TA_{i}-c_{i})=0 \quad i=1,\dots,n \\
\bar{\lambda}_{j}(a_{j}^T\bar{x}-b_{j})=0 \quad j=1,\dots,m
\end{cases}
\end{equation}
$$