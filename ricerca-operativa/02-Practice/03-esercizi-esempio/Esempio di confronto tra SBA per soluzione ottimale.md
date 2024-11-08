> In questo esempio vogliamo mostrare quello che dovrebbe essere il procedimento per stabilire la soluzione ottimale, senza l'aiuto di alcun criterio, bensì *trovando* e *confrontando* tutte le **SBA**.


$$
\begin{align} \\
\text{min } 5x_{1}+6x_{2}+x_{3} \\
x_{1}+2x_{2}+3x_{3}=4 \\
x_{1}+x_{2}+x_{3}=6 \\
x_{1},x_{2},x_{3}\geq 0
\end{align}
$$
Cerchiamo prima tutte le SBA.
Ricordiamo che il numero massimo di matrici di base e' $\begin{pmatrix}n\\m\end{pmatrix}\implies \begin{pmatrix}3\\2\end{pmatrix}=3$.
Quindi possiamo scegliere da 3 diverse matrici di base $A_{B}$ ottenute dalla seguente scelta di indici che corrispondono alle colonne della matrice $A$:
$$
B=\{ 1,2 \};B=\{ 2,3 \};B=\{ 1,3 \}
$$
Prendiamo per iniziare $B=\{ 2,3 \},N=\{ 1 \}$.
$$
A_{B}=\begin{pmatrix}
2 & 3 \\
1 & 1
\end{pmatrix}\implies A_{B}^{-1}=\begin{pmatrix}
-1 & 3 \\
1 & -2
\end{pmatrix}
$$
$$
A_{B}^{-1}b=\begin{pmatrix}
-1 & 3 \\
1 & -2
\end{pmatrix}\begin{pmatrix}
4 \\
6
\end{pmatrix}=\begin{pmatrix}
14 \\
-8
\end{pmatrix} \implies \bar{x}=\begin{pmatrix}
0 \\
14 \\
-8
\end{pmatrix}\implies \text{SB NON AMMISSIBILE}
$$
Adesso dovremmo provare con le tutte le altre scelte di indici delle matrici $B$ rimanenti.

Per ogni SBA che troviamo in questo modo, dovremmo sostituirla all'interno della funzione obiettivo e verificare la "migliore" per confronto.

Capiamo che per grandi valori di $n$ ed $m$ questo metodo diventa improponibile. Sara' quindi utile trovare un criterio per stabilire velocemente se una **SBA** risulta essere soluzione ottimale senza doverla confrontare con le altre ([[~ Metodo del simplesso]]).
