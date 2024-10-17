>Introduciamo le matrici di base e fuori base perche' ci permettono di raggiungere un metodo analitico per stabilire se un punto e' un vertice.

Consideriamo un [[Caratterizzazione di un problema di PL in forma standard|problema di PL in forma standard]]:

$$
\left\{\begin{array}{l}
\min c^Tx\\
Ax= b \\
x\geq 0
\end{array}\right.
$$
La matrice $A$ può essere divisa come segue:
$$
A=\begin{pmatrix}
A_{B} & A_{N}
\end{pmatrix}
$$
- $A_B$ ==matrice di base== ($m \times m$), deve essere **non singolare** ($\det A_B \neq 0$),
- $A_N$ ==matrice fuori base ==($m \times (n-m)$).

Le matrici $A_{B}$ e $A_{N}$ ci permettono di introdurre il concetto di [[Soluzione di base (SB)]].

>[!example]- Esempio di calcolo della matrice di base e fuori base
>![[Esempio matrice di base e fuori base]]