Sia $\bar{x}$ una SBA ossia $\bar{x}_{B}=A_{B}^{-1}b$ e $\bar{x}_{N}=0$ e dato il [[Caratterizzazione di un problema di PL in forma standard|problema in forma standard]]:
$$
\begin{align}
\text{min }c^Tx \\
Ax=b \\
x\geq 0
\end{align}
$$
La funzione obiettivo (nella forma descritta in [[Soluzione di base (SB)]]) calcolata nel punto $\bar{x}$ risulta essere
$$
f(\bar{x})=c_{B}^T\bar{x}_{B}+c_{N}^T\bar{x}_{N}=c_{B}^TA_{B}^{-1}b
$$
Sia invece $x$ un generico punto ammissibile quindi vale che
$$
Ax=b\implies \begin{pmatrix}
A_{B} & A_{n}
\end{pmatrix}
\begin{pmatrix}
x_{B} \\
x_{N}
\end{pmatrix}=b \implies x_{B}=A_{B}^{-1}b-A_{B}^{-1}A_{N}x_{N}
$$
questa ultima relazione la sostituiamo nell'equazione della funzione obiettivo
$$
\begin{align}
f(x)=c_{B}^Tx_{B}+c_{N}^Tx_{N}=c_{B}^T(A_{B}^{-1}b-A_{B}^{-1}A_{N}x_{N})+c_{N}^Tx_{N}= \\
=c_{B}^TA_{B}^{-1}b-c_{B}^TA_{B}^{-1}A_{N}x_{N}+c_{N}^Tx_{N}=f(\bar{x})+(c_{N}^T-c_{B}^TA_{B}^{-1}A_{N})x_{N}
\end{align}
$$
Cosi ottenendo la seguente relazione
$$
f(x)=f(\bar{x})+(c_{N}^T-c_{B}^TA_{B}^{-1}A_{N})x_{N}
$$
Dove chiameremo vettore dei coefficienti di costo ridotto: 
$$
\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}
$$
ottenendo in fine
$$
f(x)=f(\bar{x})+\hat{c}_{N}^Tx_{N}
$$
>Questo mi dice una cosa importante. Una soluzione ammissibile generica puo' essere ottenuta a partire da una SBA generica calcolando $\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}$.

Adesso notiamo che se $\hat{c}_{N}\geq 0 \implies \hat{c}_{N}x_{N}\geq 0$ dato che per ipotesi $x\geq 0$, quindi possiamo dire
$$
f(x)=f(\bar{x})+\hat{c}_{N}x_{N}\geq f(\bar{x})
$$
> Quello che stiamo dicendo e' che se il vettore dei coefficienti di costo ridotto risulta essere tutto non negativo allora la $f(x)\geq f(\bar{x})$, quindi la funzione obiettivo $f(x)$ non sara' mai migliore della $f(\bar{x})$, questo implica che la nostra $\bar{x}$ e' una SBA soluzione ottima.


> [!example]- Esempio di verifica della soluzione ottimale tramite il criterio sufficiente di ottimalità.
> ![[Esempio di utilizzo del criterio di ottimalita]]

> [!warning]- Il criterio di ottimalita' non e' una condizione necessaria
> 
> $$
> \begin{align}
> \text{min } -x_{1}-4x_{2}-5x_{3}+10x_{4}+10x_{5} \\
> x_{1}+2x_{4}-x_{5}=1 \\
> x_{2}+x_{3}-x_{4}+x_{5}=0 \\
> x\geq 0
> \end{align}
> $$
> Vediamo le matrici:
> $$
> A=\begin{pmatrix}
> 1 & 0 & 0 & 2 & -1 \\
> 0 & 1 & 1 & -1 & 1
> \end{pmatrix}
> $$
> Notiamo subito che conviene prendere per esempio
> $$
> \begin{align}
> B_{1}=\{ 1,2 \} \text{ e } N_{1}=\{ 3,4,5 \} \\
> B_{2}=\{ 1,3 \} \text{ e } N_{2}=\{ 2,4,5 \}
> \end{align}
> $$
> Per $B_{1}$ e $N_{1}$ calcoliamoci $\bar{x}_{B}$ e il vettore di costo ridotto $\hat{c}_{N}^T=c_{N}^T-c_{B}^TA_{B}^{-1}A_{N}$
> $$
> \bar{x}_{B}=A_{B}^{-1}b=\begin{pmatrix}
> 1 \\
> 0
> \end{pmatrix}
> $$
> $$
> \hat{c}_{N}^T = \begin{pmatrix}
> -5 & 10 & 10
> \end{pmatrix}-\begin{pmatrix}
> -1 & 4
> \end{pmatrix}\begin{pmatrix}
> 0 & 2 & -1 \\
> 1 & -1 & 1
> \end{pmatrix}=\begin{pmatrix}
> -1 & 8 & 13
> \end{pmatrix}
> $$
> la prima componente e' negativa quindi non soddisfa il criterio di ottimalita' per la seguente SBA
> $$
> \bar{x}=\begin{pmatrix}
> 1 \\
> 0 \\
> 0 \\
> 0 \\
> 0
> \end{pmatrix}
> $$
> Vediamo adesso per $B_{2}$ e $N_{2}$
> $$
> \bar{x}_{B}=A_{B}^{-1}b=\begin{pmatrix}
> 1 \\
> 0
> \end{pmatrix}
> $$
> $$
> \hat{c}_{N}^T=\begin{pmatrix}
> -4 & 10 & 10
> \end{pmatrix}-\begin{pmatrix}
> -1 & -5
> \end{pmatrix}\begin{pmatrix}
> 0 & 2 & -1 \\
> 1 & -1 & 1
> \end{pmatrix}=\begin{pmatrix}
> 1 & 2 & 14
> \end{pmatrix}
> $$
> Essendo tutte le componenti positive, il criterio di ottimalita' risulta soddisfatto per 
> $$
> \bar{x}=\begin{pmatrix}
> 1 \\
> 0 \\
> 0 \\
> 0 \\
> 0
> \end{pmatrix}
> $$
> Notiamo che otteniamo la stessa SBA per entrambi i casi, solo che per il primo caso il criterio non "individua" il fatto che si tratti di una soluzione ottimale. Questo perché il criterio non e' condizione necessaria per SBA degeneri.