Teoria: [[Trasporti.pdf]]
# Formulazione Generale
- Variabili: rappresentano la quantità di merce.
- Funzione obiettivo: vogliamo minimizzare il costo dei trasporti.
- Con $i$ rappresenteremo l'origine e con $j$ la destinazione.
- Abbiamo $m$ localita' di origine.
- Abbiamo $n$ localita' di destinazione.
- Ogni coppia origine-destinazione ha un costo di "trasporto"

## Funzione obiettivo
La forma generica della funzione obiettivo per un modello di pianificazione di trasporti risulta essere:
$$
\min\sum_{i=1}^m\sum_{j=1}^nc_{ij}x_{ij}
$$
# Modellazioni extra
- Come possiamo modellare il fatto che certe rotte non sono disponibili?
Andiamo ad imporre che la variabile relativa a quella tratta sia $=0$.
$$
\implies x^*_{ij}=0 \text{ e }c_{ij}=\infty
$$
- Su certe rotte potremmo avere delle limitazioni sulle quantità massima di merci trasportabili 
Dobbiamo quindi introdurre dei vincoli per modellare ciò.
- Potrebbe accadere che la disponibilità complessiva sia superiore alla domanda
Se supponiamo che ci siano delle giacenze nelle origini ossia possiamo produrre piu cose che servono alle destinazioni.
$$
\sum_{j=1}^{n} x_{ij}\leq a_{i} \quad i=1,\dots,m
$$
Se supponiamo che ci siano delle giacenze nelle destinazioni
$$
\sum_{i=1}^{m} x_{ij}\geq b_{j} \quad j=1,\dots,n
$$
# Esempi
> [!example] Esempio Miniere
> ![[Esercizio PL - Trasporti - Miniere]]
