Il teorema afferma che se un insieme è definito come l'intersezione di un numero finito di semispazi chiusi, allora questo insieme è un **poliedro** e, di conseguenza, è un **insieme convesso**.
## Dimostrazione
Per [[Definizione di poliedro]], $P=\{ x \in \mathbb{R} ^n : Ax\geq b \}$.

Vogliamo dimostrare che ogni segmento generico 
$$
z=\beta x+(1-\beta)y \text{ ; } 0\leq \beta\leq 1
$$
>[!note]+ Rappresentazione grafica di $z=\beta x+(1-\beta)y$
>![[segmento-parametrizzato.gif|600]]

appartiene a $P$ ovvero soddisfa la relazione
$$
Az\geq b.
$$
Andiamo a sostituire $z$ nella relazione
$$
Az=A(\beta x+(1-\beta)y)=\beta Ax+(1-\beta)Ay
$$
ed essendo che
$$
\begin{align}
Ax & \geq b \implies \beta Ax\geq \beta b \\
Ay & \geq b \implies (1-\beta)Ay\geq(1-\beta)b
\end{align}
$$
otteniamo
$$
Az\geq \beta b+(1-\beta)b=\cancel{ \beta b }+b-\cancel{ \beta b }=b
$$
$$
Az\geq b \implies z \in P \implies \text{P convesso}
$$