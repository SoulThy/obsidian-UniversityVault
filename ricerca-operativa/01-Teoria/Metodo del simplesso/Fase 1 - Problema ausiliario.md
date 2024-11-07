# Caratterizzazione
Partendo da un problema [[Caratterizzazione di un problema di PL in forma standard|in forma standard]] 
$$
\begin{align}
\text{min } c^T x \\
Ax=b \\
x\geq 0
\end{align}
$$
Otteniamo adesso il problema ausiliario, introducendo delle **variabili artificiali** $\alpha$ che comporteranno un problema della grandezza di $(n+m)$ variabili.
$$
\begin{align}
\text{min } 1^T\alpha \\
Ax+I\alpha=b \\
x\geq 0, \alpha \geq 0
\end{align}
$$
l'idea e' quella di minimizzare la funzione obiettivo che risulta composta dalla combinazione delle variabili artificiali, cercandole di renderle zero in modo tale che le restanti $x$ possano costituire una soluzione ammissibile del problema originale.
> [!example]- Esempio di passaggio al problema ausiliario
> ![[Esempio di passaggio al problema ausiliario]]

Avendo allargato il nostro problema adesso un generico vettore formato dalle componenti del problema risultera' essere della forma $\begin{pmatrix}x\\\alpha\end{pmatrix}$.
# Il problema ausiliario ammette sempre soluzione ottima
Adesso verifichiamo se il problema ausiliario verifica sempre soluzione ottima, per fare determinare cio' seguiremo il [[Teorema fondamentale della PL riferito alle SBA]].
1. Il problema ausiliario ha insieme ammissibile vuoto? 
	Se prendiamo $\begin{pmatrix}x\\0\end{pmatrix}$ siamo sempre certi che i vincoli del problema sono rispettati, infatti: $Ax+I\alpha=b\implies Ax=b$.
	Quindi sicuramente il problema **NON** ha insieme ammissibile vuoto.
2. Il problema ausiliario e' illimitato inferiormente?
	No, non può essere illimitato inferiormente essendo che $\alpha \geq 0$ e la funzione obiettivo e' $1^T\alpha$. Quindi abbiamo sempre un limite inferiore, lo $0$.
3.  Essendo non verificate queste due condizioni, per il [[Teorema fondamentale della PL riferito alle SBA]] $\implies$ il problema ammette soluzione ottima.

Indichiamo quindi con $z^*$ il valore della funzione obiettivo del problema ausiliario all'ottimo.
$$
\begin{pmatrix}
x^* \\
\alpha^*
\end{pmatrix}\implies z^*=1^T\alpha^* \geq 0.
$$