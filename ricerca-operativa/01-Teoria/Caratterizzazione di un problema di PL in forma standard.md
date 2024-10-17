>Introduciamo questo concetto perché, se vogliamo trovare un algoritmo che ci permetta di ottenere le soluzioni di un problema di PL, sarà necessario avere un punto di partenza sempre uguale.

Fa riferimento a [[Caratterizzazione di un problema di PL]] solo che vogliamo tutti i vincoli composti da sole uguaglianze e deve essere un problema di "$\min$". $$ \begin{array}{cccc}a_{11}x_1+&\dots&+a_{1n}x_n&= b_1\\a_{21}x_1+&\dots&+a_{2n}x_n&= b_2\\\vdots&\dots&\vdots&\vdots\\a_{m1}x_1+&\dots&+a_{mn}x_n&= b_m.\end{array} $$$$ \left\{\begin{array}{l} \min c^Tx\\ Ax= b \\ x\geq 0 \end{array}\right. $$
## Trasformazione in forma standard 
Come passiamo da un problema di PL non in forma standard a uno in forma standard? 
### Massimizzazione 
Se il problema richiede la massimizzazione: 
$$\text{max } c^Tx \iff \text{min }(-c^Tx)$$
### Vincoli 
- Vincolo $a_{i}^Tx \leq b_{i}$: $$s_{i}=b_{i}-a_{i}^Tx \implies a_{i}^Tx+s_{i}=b_{i} \quad \text{con} \quad s_{i}\geq 0$$ - Vincolo $a_{j}^Tx \geq b_{j}$: $$a_{j}^Tx-s_{j}=b_{j} \quad \text{con} \quad s_{j} \geq 0$$ - Variabile $x_h$ non vincolata in segno: $$ \begin{align} x_{h} = x_{h}^+ - x_{h}^- \\ x_{h}^+,x_{h}^- \geq 0 \end{align} $$ 
>[!example]- Esempio di standardizzazione
>![[Esempio di standardizzazione]]