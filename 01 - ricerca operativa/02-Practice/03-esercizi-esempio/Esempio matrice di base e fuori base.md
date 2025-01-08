Consideriamo il seguente problema di programmazione lineare:
$$
\begin{align}
\text{min } 2x_{1}-3x_{2}+x_{3}-x_{4} \\
x_{1}+2x_{2}-x_{3}+x_{4}=3 \\
-x_{1}+x_{2}+2x_{3}-x_{4}=1 \\
x \geq 0
\end{align}
$$

Abbiamo $m=2$ vincoli e $n=4$ variabili.

### 1. Matrice dei vincoli

La matrice dei coefficienti dei vincoli $A$ è:
$$
A = \begin{pmatrix}
1 & 2 & -1 & 1 \\
-1 & 1 & 2 & -1
\end{pmatrix}
$$

### 2. Scelta della matrice di base

Scegliamo una sotto-matrice $m \times m$ non singolare di $A$. Ad esempio, scegliamo le colonne 1 e 2:
$$
A_B = \begin{pmatrix}
1 & 2 \\
-1 & 1
\end{pmatrix}
$$

Verifichiamo se $A_B$ è non singolare calcolando il determinante:
$$
\det(A_B) = 1(1) - 2(-1) = 1 + 2 = 3
$$
Essendo $\det(A_B) \neq 0$, $A_B$ è una **matrice di base**.

### 3. Matrice fuori base

Le colonne rimanenti 3 e 4 costituiscono la **matrice fuori base** $A_N$:
$$
A_N = \begin{pmatrix}
-1 & 1 \\
2 & -1
\end{pmatrix}
$$

### 4. Numero massimo di matrici di base

Il numero **massimo** di possibili matrici di base è dato da:
$$
\binom{n}{m} = \binom{4}{2} = 6
$$

In generale, $B = \{ i_1, i_2, \dots, i_m \}$ rappresenta l'insieme di indici delle colonne della matrice di base. Nell'esempio abbiamo scelto $B = \{1, 2\}$, mentre gli indici della matrice fuori base sono $N = \{3, 4\}$.

Per approfondire, vedi [[Matrice di base e fuori base]].
