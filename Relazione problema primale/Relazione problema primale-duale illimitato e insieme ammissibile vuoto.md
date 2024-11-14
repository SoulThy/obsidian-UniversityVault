# Enunciato
Se uno dei due problemi e' illimitato, l'altro ha insieme ammissibile vuoto.

> *Questo e' abbastanza intuitivo, basta immaginare che il problema illimitato va a "mangiare" quello duale.*
# Dimostrazione
Supponiamo che il problema di minimo sia [[Definizione di problema illimitato (inferiormente)|illimitato inferiormente]], questo significa che 
$$
\text{Esiste la sequenza }\{ x_{k} \} \text{ di punti ammissibili t.c }\lim_{ k \to \infty } c^Tx_{k}=-\infty 
$$
Se supponiamo che il problema di massimo non abbia insieme ammissibile vuoto, questo significherebbe che 
$$
\exists \bar{\lambda} \text{ ammissibile per il problema di massimo}
$$
Adesso ci basta prendere il [[Teorema della dualita debole]] per ottenere un assurdo:
$$
c^Tx_{k}\geq b^T\bar{\lambda} \quad \forall k
$$
Dove a primo membro abbiamo $-\infty$ e a secondo membro un numero finito. Impossibile, quindi deve risultare vero l'enunciato.