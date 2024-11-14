## Enunciato
L'insieme ammissibile del problema originario e' non vuoto se e solo se $z^*=0$

## Dimostrazione 
Ricordiamo:
- per dimostrare che la condizione e' ==necessaria==, abbiamo come ipotesi il fatto che l'insieme risulta non vuoto, la tesi e' che quindi anche $z^*$ deve essere 0 se vale l'ipotesi.
- per dimostrare che la condizione e' ==sufficiente==, dimostriamo che se vale $z^*$ allora sicuramente l'insieme e' ammissibile risulta vuoto. 
### Dimostrazione condizione necessaria
Ipotesi: *insieme ammissibile del problema originario non vuoto.*
Questo implica che
$$
\begin{align}
\exists \bar{x}:A\bar{x}=b \\
\bar{x}\geq 0
\end{align}
$$
allora prendo come punto ammissibile per il problema ausiliario
$$
\begin{pmatrix}
\bar{x} \\
0
\end{pmatrix}\implies A\bar{x}+I\cdot 0 =b
$$
quindi dove la funzione obiettivo del problema ausiliario rispetto questo punto, risulterà essere
$$
\bar{z}=0=z^*
$$
### Dimostrazione condizione sufficiente
Ipotesi: $z^*=0$.
Prendiamo
$$
\begin{pmatrix}
x^* \\
\alpha^*
\end{pmatrix} \text{ soluzione ottima problema ausiliario}
$$
per l'ipotesi
$$
z^*=1^T\alpha^*=0\implies\alpha^*=0\implies Ax^*+I\cdot 0=b
$$
Cosi abbiamo ottenuto
$$
Ax^*=b \implies x^* \text{ punto ammissibile problema originario}
$$
