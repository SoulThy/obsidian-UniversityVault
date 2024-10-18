Esercizio $4$ preso da [[Esercizi-con-soluzione.pdf]].
$$
\begin{align}
x_{1}-x_{2}+x_{3}\leq 1 \\
x_{2}\leq 3 \\
x_{1} + x_{3} \leq 1 \\
x_{3} \leq 1 \\
x_{1}\geq 0 \\
x_{3} \geq 0
\end{align}
$$
1) Il punto $P_{1}=(1,0,0)^T$ e' un vertice?

$$
A=\begin{pmatrix}
1 & -1 & 1 \\
0 & 1 & 0 \\
1 & 0 & 1 \\
0 & 0 & 1 \\
-1 & 0 & 0 \\
0 & 0 & -1
\end{pmatrix}\begin{align}
^1 \\
^2 \\
^3 \\
^4 \\
^5 \\
^6 \\
\end{align}
$$
Verifichiamo se $P_{1}\in P$ ossia se sostituendolo, verifica tutti i vincoli. Nel nostro caso e' veloce verificare che $P_{1}\in P$.
Adesso prendiamo l'insieme dei vincoli attivi. Ossia $I(P_{1})=\{ 1,3,6 \}$. Se avremo $3$ (essendo nel nostro caso $n=3$ dimensione dello spazio) vincoli attivi linearmente indipendenti allora $P_{1}$ sara' un vertice. Per verificare che sono linearmente indipendenti ne calcoliamo il determinante.
$$
\det\begin{pmatrix}
1 & -1 & 1 \\
1 & 0 & 1 \\
0 & 0 & -1
\end{pmatrix}\neq 0 \implies P_{1}\text{ vertice}
$$
2) Il punto $P_{2}=(0,0,1)^T$ e' un vertice?
Proseguiamo come per il punto $(1)$.
Troviamo che le seguenti righe della matrice $A$ ci danno vincoli attivi: $I(P_{2})=\{ 1,3,4,5 \}$.
Essendo $4$ vincoli attivi in $\mathbb{R}^3$ potrebbe trattarsi di un vertice se troviamo una coppia di tre tra queste equazioni che sono linearmente indipendenti tra loro.
$$
\det\begin{pmatrix}
1 & -1 & 1 \\ 
0 & 0 & 1 \\
-1 & 0 & 0 
\end{pmatrix} \neq 0 \implies P_{2} \text{ vertice}
$$
3) Il punto $P_{3}=(0,3,0)^T$ e' un vertice?
$I(P_{3})=\{ 2,5,6 \}$.
$$
\det \begin{pmatrix}
0 & 1 & 0 \\
-1 & 0 & 0 \\
0 & 0 & -1
\end{pmatrix}\neq 0 \implies P_{3} \text{ vertice}
$$
4) Il punto $P_{4}=(0,0,0)^T$ e' un **ammissibile**?
Qui non ci viene chiesto di verificare se il punto e' un vertice, solo se si tratta di un punto **ammissibile**, ossia se il punto appartiene all'insieme ammissibile $F$.
Ci basterà controllare se il punto verifica i vincoli, nel nostro caso le disuguaglianze sono tutte verificate.

>[!note]
>In questo caso $I(P_{4})=\{ 5,6 \}$, ossia al punto $P_{4}$ sono associati solo $2$ vincoli attivi, questo implica che sicuramente il punto non possa essere un vertice.