Nei problemi che vengono formulati come modelli di miscelazione si dispone di un insieme di **materie prime** ("ingredienti") ciascuna caratterizzata da un contenuto noto di determinati "componenti".
Un esempio classico e' quello del problema della dieta https://en.wikipedia.org/wiki/Stigler_diet.

## Formulazione generale 
Sia $n$ il numero di sostanze $S_{1}, \dots, S_{n}$ e $m$ i componenti $C_{1}, \dots, C_{m}$. Ogni sostanza ha un costo $p_{j}$ e un contenuto di componente $a_{ij}$.
Si vuole ottenere la miscela di $S_{1},\dots,S_{n}$ piu' economica che
soddisfi determinati requisiti qualitativi, ovvero contenga una
quantità non inferiore a $b_{i}$ di ciascun $C_{i}, \quad i=1,\dots,m$.
### Variabili 
Le variabili $x_{1}, x_{2}, \dots, x_{n}$ rappresentano le quantità di ciascuna sostanza da utilizzare nella miscela. 
### Funzione Obiettivo 
Minimizzare il costo della miscela: 
$$ \text{min } p_{1}x_{1} + p_{2}x_{2} + \dots + p_{n}x_{n} $$
### Vincoli 
1. **Qualità**: la miscela deve contenere almeno $b_{i}$ di ciascun componente $C_{i}$: 
$$ a_{i1}x_{1} + a_{i2}x_{2} + \dots + a_{in}x_{n} \geq b_{i} $$
2. **Non negatività**: 
$$ x_{j} \geq 0, \quad j = 1, \dots, n $$
>[!example]-
>![[Esercizio PL - Miscelazione - Dieta]]

>[!example]-
>![[Esercizio PL - Miscelazione - Acciaio]]

