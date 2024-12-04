# Enunciato
Ci dice che se uno dei due problemi (primale, duale) ammette soluzione ottima allora anche l'altro problema ammette soluzione ottima e quindi il [[Gap di dualità]] e' nullo e le due soluzioni coincidono.
# Richiami utili per la dimostrazione
Dato un problema in forma standard con $\hat{x}$ soluzione ottima del problema allora per il [[Teorema fondamentale della PL riferito alle SBA]] esiste una SBA $x^*$ che e' soluzione ottima del problema.
E possiamo anche dire che esiste una SBA che chiamiamo $\bar{x}$ che e' soluzione ottima del problema ed e' tale che $\hat{c}_{N}^T\geq 0^T$ ([[Relazione tra soluzione ottima e vettore costi ridotti]])
# Dimostrazione
Senza perdita di generalità prendiamo un problema di PL in forma standard con il suo corrispettivo duale. ([[Dualita lineare]]).
Supponiamo per ipotesi che il problema ammette soluzione ottima $\hat{x}$, per i richiami precedenti, esiste quindi una SBA ottima $\bar{x}$ e tale che $\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}\geq 0$.
Inoltre la sua funzione obiettivo risulta essere $c^T\bar{x}=c_{B}^TA_{B}^{-1}b$, in quanto essendo una SBA i costi corrispettivi alle componenti fuori base si annulleranno.

Prendiamo $\bar{\lambda}^T=c_{B}^TA_{B}^{-1}$.
$$
b^T\bar{\lambda}=\bar{\lambda}^Tb=c_{B}^TA_{B}^{-1}b = c^T\bar{x}
$$
Notiamo che scegliendo $\bar{\lambda}$ in questo modo la funzione obiettivo del duale risulta essere uguale alla soluzione del problema primale quindi il gap di dualita risulterebbe nullo.

Dobbiamo adesso vedere se $\bar{\lambda}$ scelto in quel modo e' ammissibile per il duale.
Ossia volgiamo verificare che:
$$
\bar{\lambda}^TA\leq c^T.
$$
Possiamo separare nella parte in base e quella fuori base:
$$
\bar{\lambda}^T\begin{pmatrix}
A_{B} & A_{N}
\end{pmatrix}\leq \begin{pmatrix}
C_{B} & C_{N}
\end{pmatrix}^T.
$$
stiamo quindi chiedendo che 
$$
\begin{align}
\bar{\lambda}^TA_{B}\leq c_{B}^T \\
\bar{\lambda}^TA_{N}\leq c_{N}^T
\end{align}
$$
vediamo la prima
$$
\bar{\lambda}^TA_{B}\leq c_{B}^T 
\implies c_{B}^TA_{B}^{-1}A_{B}\leq c_{B}^T
\implies c_{B}^T\leq c_{B}^T \text{ verificata sempre}
$$
vediamo la seconda
$$
\bar{\lambda}^TA_{N}\leq c_{N}^T
\implies c_{B}^TA_{B}^{-1}A_{N}\leq c_{N}^T \implies c_{N}^T- c_{B}^TA_{B}^{-1}A_{N}\geq 0\text{ verificata sempre}
$$
Anche questa risulta essere sempre verificata essendo che abbiamo a primo membro il vettore dei costi ridotti che per [[Relazione tra soluzione ottima e vettore costi ridotti]] e' sempre $\geq 0$.

Abbiamo quindi trovato un $\bar{\lambda}$ ammissibile per il duale e tale che $\bar{\lambda}^Tb = c^T\bar{x}$, possiamo quindi concludere che per il corollario della dualità debole che $\bar{\lambda}$ e' soluzione ottima del duale.
