Data la seguente formulazione:
$$
x = \begin{pmatrix}
x_B \\
x_N
\end{pmatrix}, \quad c^T = \begin{pmatrix}
c_B^T & c_N^T
\end{pmatrix}
$$
Possiamo scrivere il [[Caratterizzazione di un problema di PL in forma standard|problema in forma standard]] con le [[Matrice di base e fuori base]] come:
$$
\begin{align}
\text{min } c_B^T x_B + c_N^T x_N \\
A_B x_B + A_N x_N = b \\
x_B \geq 0 \\
x_N \geq 0
\end{align}
$$

### Definizione di Soluzione di Base (SB)

Si definisce **soluzione di base** il punto in cui:
$$
\bar{x}_N = 0 \quad \text{e} \quad \bar{x}_B = A_B^{-1} b
$$
Quindi, la soluzione di base complessiva è:
$$
\bar{x} = \begin{pmatrix}
A_B^{-1} b \\
0
\end{pmatrix}
$$
### Soluzione di Base Ammissibile (SBA)

Se tutte le componenti di $\bar{x}$ sono ammissibili (cioè non negative), allora $\bar{x}$ è chiamata **soluzione di base ammissibile (SBA)**. In particolare:
$$
A_B^{-1} b \geq 0 \implies \bar{x} \text{ è una SBA}.
$$
>[!example]- Esempio di calcolo della soluzione di base
>![[Esempio di calcolo della soluzione di base (SB)]]