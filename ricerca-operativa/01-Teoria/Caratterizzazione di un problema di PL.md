Un problema di **Programmazione Lineare** e' caratterizzato da
- una *funzione obiettivo lineare* da minimizzare o massimizzare della forma$$f(x)=c_{1}x_{1}+\dots+c_{n}x_{n}=\sum_{j=1}^{n} c_{j}x_{j}$$
- un insieme *ammissibile* costituito da un numero finito, $m$, di *vincoli lineari*, cioè $x \in F$ se e solo se $x$ soddisfa relazioni del tipo: $$\begin{array}{cccc}a_{11}x_1+&\dots&+a_{1n}x_n&\ge b_1\\a_{21}x_1+&\dots&+a_{2n}x_n&\ge b_2\\\vdots&\dots&\vdots&\vdots\\a_{m1}x_1+&\dots&+a_{mn}x_n&\ge b_m.\end{array}$$
>[!note]
>Dato un punto $\bar{x}$ per il problema LP $A\bar{x} \leq b$, un vincolo si dice:
> - **attivo** se $a^T \bar{x} = b$
> - **verificato** se $a^T \bar{x} < b$
> - **violato** se $a^T \bar{x} > b$

Introducendo le forme vettoriali e matriciali, e' possibile rappresentare un generico problema di programmazione lineare come: 
$$
\left\{\begin{array}{l}
\min c^Tx\\
Ax\geq b.
\end{array}\right.
$$


