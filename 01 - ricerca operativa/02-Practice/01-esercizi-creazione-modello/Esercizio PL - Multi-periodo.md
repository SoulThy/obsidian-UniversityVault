Riferimento: [[ModelliAllocazione3.pdf]].
L'esercizio si basa sull'[[Esercizio PL - MultiPlant]], considerando solo il primo impianto di produzione. 
L'obiettivo è programmare la produzione di due prodotti $P_{1}$ e $P_{2}$ per due settimane, con possibilità di stoccaggio. 
- Materiale grezzo: 75 kg/settimana 
- Costo di immagazzinamento: 2 €/prodotto
- Settimana 1: max 12 $P_{1}$, max 4 $P_{2}$ 
- Settimana 2: max 8 $P_{1}$, max 12 $P_{2}$
- Ogni unità di $P_{1}$ e $P_{2}$ consuma 4 kg di materiale grezzo (vedi [[Esercizio PL - MultiPlant]]) 
### Variabili 
Per le settimane e i prodotti: 
$$ x_{1}, x_{2}, x_{3}, x_{4} $$
- $x_{1}$: $P_{1}$ prima settimana 
- $x_{2}$: $P_{2}$ prima settimana 
- $x_{3}$: $P_{1}$ seconda settimana 
- $x_{4}$: $P_{2}$ seconda settimana 
Quantità in eccesso: 
$$ y_{1}, y_{2} $$
- $y_{1}$: Quantità di $P_{1}$ non venduta nella prima settimana 
- $y_{2}$: Quantità di $P_{2}$ non venduta nella prima settimana 
- ### Funzione Obiettivo 
- Massimizzazione del profitto: $$ \text{max } 10(x_{1} + x_{3}) + 15(x_{2} + x_{4}) - 2(y_{1} + y_{2}) $$
- ### Vincoli 
1. **Materiale grezzo** (max 75 kg/settimana): 
$$
\begin{align}
4x_{1} + 4x_{2} \leq 75 \\ 4x_{3} + 4x_{4} \leq 75
\end{align}
$$
2. **Macchina levigatrice** (max 80 ore/settimana): 
$$
\begin{align}
4x_{1} + 2x_{2} \leq 80 \\ 4x_{3} + 2x_{4} \leq 80
\end{align}
$$
3. **Macchina pulitrice** (max 60 ore/settimana): 
$$
\begin{align}
 2x_{1} + 5x_{2} \leq 60 \\ 2x_{3} + 5x_{4} \leq 60 
\end{align}
$$
4. **Vendite e stoccaggio**: 
Ricordiamo che dobbiamo modellare il fatto che possiamo immagazzinare dei prodotti per la seconda settimana.

$$
\begin{align}
x_{1}\leq 12+y_{1} \\
\end{align}
$$
>Quello che stiamo dicendo e' che possiamo produrre nella prima settimana per $x_{1}$ massimo 12unita' $+$ il prodotto extra che venderemo nella seconda settimana

Quello che possiamo vendere nella seconda settimana sara' adesso
$$
\begin{align}
x_{3}+y_{1}\leq 8
\end{align}
$$
Facciamo la stessa cosa per il prodotto $P_{2}$.
$$
\begin{align}
x_{2}\leq 4+y_{2} \\
x_{4}+y_{2}\leq 12
\end{align}
$$
5. **Consistenza dello stoccaggio**: 
$$
\begin{align}
 x_{1} \geq y_{1} \\ x_{2} \geq y_{2}
\end{align}
$$
Questi vincoli servono a garantire che le quantità in eccesso ($y_{1}$ e $y_{2}$) siano coerenti con la produzione effettiva ($x_{1}$ e $x_{2}$) nella prima settimana. Poiché $y_{1}$ e $y_{2}$ rappresentano la quantità di prodotto che non viene venduto ma immagazzinato per la seconda settimana, non possono mai superare la quantità totale prodotta ($x_{1}$ per $P_{1}$ e $x_{2}$ per $P_{2}$). Ad esempio, se nella prima settimana vengono prodotti solo 1 unità di $P_{1}$, non è possibile immagazzinare più di 1 unità; sarebbe illogico affermare che ci sono 3 unità in eccesso quando ne è stata prodotta solo 1.
### Formulazione Finale 
 $$ \text{max } 10(x_{1} + x_{3}) + 15(x_{2} + x_{4}) - 2(y_{1} + y_{2}) $$
 $$ \begin{align} 4x_{1} + 4x_{2} \leq 75 \\ 4x_{3} + 4x_{4} \leq 75 \\ 4x_{1} + 2x_{2} \leq 80 \\ 4x_{3} + 2x_{4} \leq 80 \\ 2x_{1} + 5x_{2} \leq 60 \\ 2x_{3} + 5x_{4} \leq 60 \\ x_{1} - y_{1} \leq 12 \\ x_{3} + y_{1} \leq 8 \\ x_{2} - y_{2} \leq 4 \\ x_{4} + y_{2} \leq 12 \\ -x_{1} + y_{1} \leq 0 \\ -x_{2} + y_{2} \leq 0 \\ x_{1}, x_{2}, x_{3}, x_{4}, y_{1}, y_{2} \geq 0 \end{align} $$