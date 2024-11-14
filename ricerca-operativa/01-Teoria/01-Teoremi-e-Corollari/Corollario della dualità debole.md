Dal [[Teorema della dualita debole]] segue che:
# Enunciato
- Sia $\bar{x}$ punto ammissibile del problema di minimo.
- Sia $\bar{\lambda}$ punto ammissibile del problema di massimo.
Se vale che
$$
c^T\bar{x}=b^T\bar{\lambda}
$$

Allora risulta che $\bar{x}$ e' soluzione ottima del problema di minimo e $\bar{\lambda}$ e' soluzione ottima del problema di massimo.
# Dimostrazione
Ipotesi: $c^T\bar{x}=b^T\bar{\lambda}$
Vogliamo dimostrare che:
- $\bar{x}\text{ punto di minimo ossia }  c^Tx\geq c^T\bar{x}$
- $\bar{\lambda}\text{ punto di massimo ossia } b^T\lambda \leq b^T\bar{\lambda}$
Per il [[Teorema della dualita debole]] vale che
$$
c^Tx\geq b^T\lambda \implies c^Tx\geq b^T\bar{\lambda}
$$
Per la nostra ipotesi
$$
c^Tx\geq b^T\bar{\lambda} \implies c^Tx\geq c^T\bar{x}
$$
Ossia $\bar{x}$ e' punto di minimo.

Possiamo svolgere la stessa iterazione per dimostrare che $\bar{\lambda}$ sia punto di massimo.
Dalla dualità:
$$
b^T\lambda\leq c^Tx \implies b^T\lambda\leq c^T\bar{x}
$$
Per la nostra ipotesi
$$
b^T\lambda\leq c^T\bar{x}\implies b^T\lambda\leq b^T\bar{\lambda}
$$
Ossia $\bar{\lambda}$ e' punto di massimo.