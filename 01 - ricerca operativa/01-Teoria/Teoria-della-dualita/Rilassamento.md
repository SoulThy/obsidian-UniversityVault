Dato un problema di ottimizzazione (I) nella forma:
$$
\min f(x) \quad \text{soggetto a} \quad x \in A
$$
definiamo un secondo problema (II) nella forma:
$$
\min g(x) \quad \text{soggetto a} \quad x \in B
$$
e diciamo che (II) è un **rilassamento di (I)** se:

1. **Insieme di fattibilità esteso**: $A \subseteq B$, cioè l’insieme di vincoli di (II) include o "rilassa" quelli di (I). Questo significa che ogni soluzione ammissibile di (I) è anche ammissibile per (II), ma non necessariamente viceversa.
   
2. **Funzione obiettivo rilassata**: Per ogni $x \in A$, si ha $g(x) \leq f(x)$. Questo implica che la funzione obiettivo del rilassamento (II) sottostima o uguaglia quella del problema originale per tutte le soluzioni ammissibili del problema originario.

In pratica, risolvere il rilassamento significa ottenere una stima del valore ottimale di $f(x)$, e questa soluzione può fornire una "frontiera" o limite inferiore (nel caso di minimizzazione) che ci dice quanto in basso potremmo spingere la funzione obiettivo di (I).

> [!example] Esempio, rilassamento continuo
> Un esempio comune è il **rilassamento continuo**: se il problema (I) è un problema di ottimizzazione su variabili intere, possiamo creare un rilassamento continuo permettendo alle variabili di assumere valori reali (cioè, togliamo i vincoli di integrità).