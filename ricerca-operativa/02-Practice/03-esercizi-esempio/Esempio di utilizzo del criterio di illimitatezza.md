>In questo esempio vogliamo sfruttare il [[Metodo del simplesso#Criterio sufficiente di illimitatezza|criterio sufficiente di illimitatezza]] per verificare che il nostro problema risulti illimitato inferiormente. 
>Quindi verificheremo che il criterio di ottimalita' non sia soddisfatto poi calcoleremo $y=-A_{B}^{-1}A_{j}$ e controlleremo se tutte le sue componenti sono non negative.

$$
\begin{align}
\text{min } 2x_{1}-10x_{2}+x_{3}+7x_{4} \\
x_{1}-x_{2}+2x_{4}=4 \\
-2x_{2}+x_{3}-4x_{4}=2 \\
x_{1},x_{2},x_{3},x_{4}\geq 0
\end{align}
$$
$$
A=\begin{pmatrix}
1 & -1 & 0 & 4 \\
0 & -2 & 1 & -4
\end{pmatrix};B=\begin{pmatrix}
4 \\
2
\end{pmatrix}
$$
Individuiamo velocemente le colonne che ci danno una matrice di base:
$$
B=\{ 1,3 \};N=\{ 2,4 \}
$$
Calcoliamoci $\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}$.
$$
c_{B}^T=\begin{pmatrix}
2 & 1
\end{pmatrix};c_{N}^T=\begin{pmatrix}
-10 & 7
\end{pmatrix};
A_{B}=\begin{pmatrix}
1 & 0 \\
0 & 1
\end{pmatrix}
$$
$$
\implies\hat{c}_{N}^T=\begin{pmatrix}
-6 & 7
\end{pmatrix}
$$
Avendo una componente negativa, il criterio di ottimalità non e' soddisfatto. Quindi $\exists \hat{c}_{j}<0$, nel nostro caso $j=2$ perché $-6$ fa riferimento alla prima variabile presente in $N$ che nel nostro caso risulta essere $2$.
$$
y=-A_{B}^{-1}A_{j}=-\begin{pmatrix}
1 & 0 \\
0 & 1
\end{pmatrix}\begin{pmatrix}
-1 \\
-2
\end{pmatrix}=\begin{pmatrix}
1 \\
2
\end{pmatrix}\quad \text{per } j=2
$$
Essendo tutte le componenti di $y$ non negative $\implies$ il problema e' illimitato inferiormente.