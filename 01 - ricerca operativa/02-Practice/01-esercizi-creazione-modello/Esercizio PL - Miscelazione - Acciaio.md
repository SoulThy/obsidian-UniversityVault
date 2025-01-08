Riferimento: [[ModelliMiscelazione_Intro.pdf]].
## Esempio 2
ACC-ricrea e' un’azienda che produce acciaio 18/10.
L’azienda ha analizzato le caratteristiche di sei lotti di rottami di
ferro, riportate nella seguente tabella, dove sono riportati anche il peso di ciascun lotto e il costo in euro per quintale di rottame:

|                | L1  | L2  | L3  | L4  | L5  | L6  |
| -------------- | --- | --- | --- | --- | --- | --- |
| Ferro(%)       | 93  | 76  | 74  | 65  | 76  | 68  |
| Nichel(%)      | 5   | 13  | 11  | 16  | 6   | 23  |
| Cromo(%)       | 0   | 11  | 12  | 14  | 20  | 8   |
| Impurita(%)    | 2   | 0   | 3   | 5   | 2   | 1   |
|                |     |     |     |     |     |     |
| Peso(quintali) | 30  | 90  | 50  | 70  | 60  | 50  |
| Costo          | 50  | 100 | 80  | 85  | 92  | 115 |
L’obiettivo per ACC-ricrea e' produrre, al costo minimo, ==almeno
100 quintali di acciaio== 18/10 ==con una presenza del 18% di cromo e 10% di nichel, almeno il 65% di ferro e al piu un 1% di impurità==.
### Variabili
$$
x_{1},x_{2},x_{3},x_{4},x_{5},x_{6}
$$
### Funzione obiettivo
$$
\text{min } 50x_{1}+100x_{2}+80x_{3}+85x_{4}+92x_{5}+115x_{6}
$$
### Vincoli
Vincoli sulla produzione minima di acciaio
$$
\sum_{j=1}^{6} x_{j} \geq 100
$$
Vincoli per ottenere una presenza del $18\%$ di cromo
$$
11\%x_{2}+12\%x_{3}+14\%x_{4}+20\%x_{5}+8\%x_{6}=18\%\left( \sum_{j=1}^{6} x_{j} \right)
$$
$$
11x_{2}+12x_{3}+14x_{4}+20x_{5}+8x_{6}=18\left( \sum_{j=1}^{6} x_{j} \right)
$$

>Quello che stiamo chiedendo e' che ci deve essere il $18\%$ di cromo nel totale dell'acciaio prodotto dai lotti.

Vincoli per ottenere una presenza del $10\%$ di nichel
$$
5x_{1}+13x_{2}+11x_{3}+16x_{4}+6x_{5}+23x_{6} = 10\left( \sum_{i=1}^{6}x_{j} \right)
$$
Vincoli per ottenere una presenza del 65% di ferro
$$
93x_{1}+76x_{2}+74x_{3}+65x_{4}+76x_{5}+68x_{6}\geq 65\left( \sum_{j=1}^{6} x_{j} \right)
$$

Vincoli ottenere al piu' l'1 di impurità
$$
2x_{1}+3x_{3}+5x_{4}+2x_{5}+1x_{6}\leq 1\cdot\left( \sum_{i=1}^{6} x_{j} \right)
$$
Vincoli di produzione massima in quintali per ciascun lotto
$$
\begin{align}
x_{1}\leq 30 \\
x_{2} \leq 90 \\
x_{3} \leq 50 \\
x_{4} \leq 70 \\
x_{5} \leq 60 \\
x_{6} \leq 50
\end{align}
$$
Vincoli di non negatività
$$
\begin{align}
x_{j} \geq 0 \quad j=1,\dots,6
\end{align}
$$