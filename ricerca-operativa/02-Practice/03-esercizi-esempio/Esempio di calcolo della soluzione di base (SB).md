Consideriamo il seguente problema che risulta essere in [[Caratterizzazione di un problema di PL in forma standard|forma standard]], troviamo una [[Soluzione di base (SB)]]:
$$
\begin{align}
\text{min } 4x_1 - 2x_2 + x_3 - x_4 \\
x_1 + 2x_2 - x_3 - x_4 = 2 \\
-x_1 - x_2 + 2x_3 + x_4 = 1 \\
x \geq 0
\end{align}
$$

### 1. Matrice di base scelta

Scegliamo $B = \{1, 3\}$ e $N = \{2, 4\}$. La matrice di base $A_B$ è quindi:
$$
A_B = \begin{pmatrix}
1 & -1 \\
-1 & 2
\end{pmatrix}
$$

Verifichiamo il determinante:
$$
\det(A_B) = 1(2) - (-1)(-1) = 2 - 1 = 1 \quad \implies \det(A_B) \neq 0
$$
Quindi $A_B$ è **non singolare** ed è una matrice di base valida.

### 2. Inversa della matrice di base

Calcoliamo l'inversa di $A_B$:
$$
A_B^{-1} = \begin{pmatrix}
2 & 1 \\
1 & 1
\end{pmatrix}
$$

### 3. Calcolo della soluzione di base

Ora possiamo calcolare la soluzione di base:
$$
\bar{x}_B = A_B^{-1} b = \begin{pmatrix}
2 & 1 \\
1 & 1
\end{pmatrix}
\begin{pmatrix}
2 \\
1
\end{pmatrix} = \begin{pmatrix}
5 \\
3
\end{pmatrix}
$$

Quindi, la soluzione complessiva è:
$$
\bar{x} = \begin{pmatrix}
\bar{x}_B \\
0
\end{pmatrix} = \begin{pmatrix}
5 \\
0 \\
3 \\
0
\end{pmatrix}
$$

Abbiamo impostato a zero le variabili fuori base $x_2$ e $x_4$ che corrispondevano ai valori della matrice di fuori base $(2,4)$.