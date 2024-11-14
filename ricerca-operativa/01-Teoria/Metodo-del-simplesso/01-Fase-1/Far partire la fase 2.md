# Far partire la fase 2 al problema ausiliario
La domanda e' se possiamo far partire la Fase 2 al problema ausiliario in modo tale da stabilire $z^*$.
Dobbiamo individuare una matrice di base per $\begin{pmatrix}A&I\end{pmatrix}$.
Notiamo che possiamo sempre prendere come matrice di base la matrice $I$ associata alle variabili artificiali.
Questo implica che otteniamo come soluzione di base
$$
\begin{pmatrix}
\bar{x} \\
\bar{\alpha}
\end{pmatrix}=\begin{pmatrix}
0_{n} \\
A_{B}^{-1}b
\end{pmatrix}=\begin{pmatrix}
0_{n} \\
b
\end{pmatrix}
$$
la quale e' pure ammissibile essendo tutte le componenti $\geq 0$, quindi SBA! 

> Questo implica che posso far partire la fase 2 del metodo del simplesso applicata al problema ausiliario in quanto mi viene "regalata" sempre una SBA associata al problema ausiliario da cui posso far partire la seconda fase.
