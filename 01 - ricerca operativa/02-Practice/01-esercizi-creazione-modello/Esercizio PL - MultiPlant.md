## [[Dispense_Modelli_multi-plant_multi-periodo.pdf]]
*Un’industria manifatturiera possiede due impianti di produzione e fabbrica due tipi di prodotti $P_{1}$ e $P_{2}$ utilizzando due macchine utensili: una per la levigatura e una per la pulitura. Per avere un prodotto finito e' necessaria l’utilizzazione di entrambe le macchine. Il primo impianto ha una disponibilità massima settimanale di 80 ore della macchina per la levigatura e di 60 ore della macchina per la pulitura. Le disponibilità massime orarie delle due macchine nel secondo impianto sono rispettivamente di 60 e 75 ore settimanali. La tabella che segue riporta, per ciascun prodotto, il numero di ore di lavorazione necessarie su ciascuna macchina per ottenere un prodotto finito (poiché le macchine possedute dal secondo impianto sono piu' vecchie, i tempi di utilizzo sono maggiori)*

![[vincoli-esercizio-multiplant.png|500]]
*Inoltre ciascuna unita' di prodotto utilizza 4 Kg di materiale grezzo. Il profitto netto ottenuto dalla vendita di una unita' di prodotto $P_{1}$ e $P_{2}$ e rispettivamente di 10$ e 15$.*
- **a)** *Costruire un modello lineare che permetta di massimizzare il profitto complessivo ottenuto dalla vendita dei prodotti in ciascun impianto sapendo che settimanalmente l’industria dispone di 75 Kg di materiale grezzo nel primo impianto e di 45 Kg di materiale grezzo nel secondo impianto.*
- **b)** *Costruire un modello lineare che permetta di massimizzare il profitto complessivo ottenuto dalla vendita dei prodotti supponendo che l’industria non allochi a priori 75 Kg di materiale grezzo nel primo impianto e di 45 Kg di materiale grezzo nel secondo impianto, ma lasci al modello la decisione di come ripartire tra i due impianti 120 Kg complessivi disponibili di questo materiale grezzo.*
### a) Problemi separati per i due impianti
In questo caso, ogni impianto è trattato **indipendentemente**. Quindi, il primo impianto risolve il suo problema di ottimizzazione considerando i propri vincoli e risorse (materiali, macchinari, ore di lavoro, ecc.), e lo stesso fa il secondo impianto.

|                | Max Materiale | Variabili     | Funzione obiettivo | Vincoli                                                                                                      |
| -------------- | ------------- | ------------- | ------------------ | ------------------------------------------------------------------------------------------------------------ |
| **Impianto 1** | 75kg          | $x_{1},x_{2}$ | $10x_{1}+15x_{2}$  | $\begin{align}4x_{1}+2x_{2}\leq 80 \\2x_{1}+5x_{2}\leq 60 \\4x_{1}+4x_{2}\leq 75\\x_{1,2}\geq 0\end{align}$  |
| **Impianto 2** | 45kg          | $x_{3},x_{4}$ | $10x_{3}+15x_{4}$  | $\begin{align}5x_{3}+3x_{4} \leq 60 \\5x_{3}+6x_{4}\leq75\\4x_{3}+4x_{4}\leq 45 \\x_{3,4} \geq 0\end{align}$ |
>[!note]
>- Impianto 1: $4x_{1}+4x_{2}\leq 75$
>- Impianto 2: $4x_{3}+4x_{4}\leq 45$
>  Sono vincoli sul materiale grezzo.
#### Impianto 1
$$
\begin{align}
\text{max } 10x_{1}+15x_{2} \\
4x_{1}+2x_{2}\leq 80 \\
2x_{1}+5x_{2}\leq 60 \\
4x_{1}+4x_{2}\leq 75 \\
x_{1,2}\geq 0
\end{align}
$$
#### Impianto 2
$$
\begin{align}
\text{max } 10x_{3}+15x_{4} \\
5x_{3}+3x_{4} \leq 60 \\
5x_{3}+6x_{4}\leq 75 \\
4x_{3}+4x_{4}\leq 45 \\
x_{3,4} \geq 0
\end{align}
$$
### b) Problema multi-plant (condivisione di risorse tra i due impianti)
Nel secondo approccio, stiamo cercando di modellare il problema come un **modello multi-plant**, dove alcuni vincoli sono **condivisi tra i due impianti**.

#### Impianto visto come multi-plant
$$
\text{max } 10(x_{1}+x_{3})+15(x_{2}+x_{4}) \leftarrow\text{ profitto globale}
$$
$$
\begin{align}
4(x_{1}+x_{3}) +4(x_{2}+x_{4})\leq 75+45 &= 120 \\
4x_{1}+2x_{2}&\leq 80 \\
2x_{1}+5x_{2} & \leq 60 \\
5x_{3}+3x_{4}  & \leq 60 \\
5x_{3}+6x_{4} & \leq 75 \\
x_{1,2,3,4} &\geq0
\end{align}
$$

>[!note]
>L'unica risorsa condivisa nei due impianti e' il materiale grezzo *(disequazione n.1)*, infatti i vincoli relativi al tempo di lavorazione sono identici al **caso (a)**.
>In particolare, la prima equazione $4(x1+x3)+4(x2+x4)≤120$ dice che la somma delle risorse usate in entrambi gli impianti non deve superare la quantità totale di materiale grezzo disponibile (120 unità). 
>In altre parole, stiamo cercando di massimizzare il profitto combinato dei due impianti, **coordinando l'uso delle risorse**.


> [!Note] Per la soluzione in python della parte b) vedere:
> [[single_model.py]]
