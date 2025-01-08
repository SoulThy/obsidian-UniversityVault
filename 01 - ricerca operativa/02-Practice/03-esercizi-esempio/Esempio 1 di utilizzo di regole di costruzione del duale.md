> In questo esempio utilizzeremo le regole descritte in [[Regole di costruzione di un problema duale]] per passare al problema duale.


Dato il seguente problema di ottimizzazione, passare al suo duale.
$$
\begin{align}
\text{min } 4x_{1}+2x_{2}-3x_{3}+4x_{4}-x_{5} \\
2x_{1}-3x_{2}-x_{3}+x_{4}-x_{5}\geq 3 \\
-x_{1}-4x_{2}+x_{3}-x_{4}+2x_{5}\leq 1 \\
4x_{1}-x_{2}-x_{3}+2x_{4}-x_{5}=3 \\
x_{1},x_{2},x_{5}\geq 0
\end{align}
$$
Vogliamo prima fare riferimento ad un problema di [[Caratterizzazione di un problema di PL|PL]] nella sua forma caratteristica, quindi vogliamo avere tutto come $\geq$, per cui invertiamo i segni dove necessario.
$$
\begin{align}
\text{min } 4x_{1}+2x_{2}-3x_{3}+4x_{4}-x_{5} \\
(\lambda_{1})\to2x_{1}-3x_{2}-x_{3}+x_{4}-x_{5}\geq 3 \\
(\lambda_{2})\to x_{1}+4x_{2}-x_{3}+x_{4}-2x_{5}\geq-1 \\
(\lambda_{3})\to4x_{1}-x_{2}-x_{3}+2x_{4}-x_{5}=3 \\
x_{1},x_{2},x_{5}\geq 0
\end{align}
$$
Possiamo fare le seguenti osservazioni:
- 3 vincoli nel problema primale $\implies$ 3 variabili $\lambda$ associate al duale.
- 5 variabili $x$ nel problema primale $\implies$ 5 vincoli nel problema duale.
Scriviamo la funzione obiettivo e i vincoli come descritti in [[Dualita lineare]], ma seguendo le [[Regole di costruzione di un problema duale]] generico.
$$
\text{max }b^T\lambda \implies \text{max }3\lambda_{1}-\lambda_{2}+3\lambda_{3} \\
$$
Per i vincoli dato un [[Caratterizzazione di un problema di PL in forma standard|problema in forma standard]] abbiamo $\lambda^TA\leq c^T$, seguendo invece le regole per un problema generico otteniamo:
$$
\begin{align}
2\lambda_{1}+\lambda_{2}+4\lambda_{3} \leq 4 \tag 1\\
-3\lambda_{1}+4\lambda_{2}-\lambda_{3} \leq 2 \tag 2\\
-\lambda_{1}-\lambda_{2}-\lambda_{3}= -3 \tag 3\\
\lambda_{1}+\lambda_{2}+2\lambda_{3}=4 \tag 4\\
-\lambda_{1}-2\lambda_{2}-\lambda_{3}\leq -1 \tag 5\\
\end{align}
$$
Dove abbiamo posto vincoli attivi ($=$) alle righe che corrispondevano alle $x$ non vincolate in segno, ossia $x_{3},x_{4}$ .
Infine per ogni vincolo attivo del primale scrivo il rispettivo $\lambda$ come non vincolato in segno.
Essendo solo la riga che fa riferimento a $\lambda_{3}$ unico vincolo attivo, otteniamo:
$$
\lambda_{1},\lambda_{2}\geq 0
$$
## Risultato finale
$$
\begin{align}
\text{max }3\lambda_{1}-\lambda_{2}+3\lambda_{3} \\
2\lambda_{1}+\lambda_{2}+4\lambda_{3} \leq 4 \\
-3\lambda_{1}+4\lambda_{2}-\lambda_{3} \leq 2 \\
-\lambda_{1}-\lambda_{2}-\lambda_{3}= -3 \\
\lambda_{1}+\lambda_{2}+2\lambda_{3}=4 \\
-\lambda_{1}-2\lambda_{2}-\lambda_{3}\leq -1 \\
\lambda_{1},\lambda_{2}\geq 0
\end{align}
$$
