Traccia: [[EsercizioTrasportiMiniere.pdf]]
### Variabili
$$
x_{ij} \quad i=1,2;j=1,2,3
$$
### Funzione obiettivo
Il vettore che rappresenta i costi
$$
c_{ij} \quad i=1,2;j=1,2,3
$$
$$
\text{min }\sum_{i=1}^{2} \sum_{i=1}^{3} c_{ij}x_{ij}
$$
### Vincoli
$a_{i}$: capacita della miniera $(i=1,2)$
$b_{j}$: domanda impianti ($j=1,2,3$)

Vincolo sulla produzione delle miniere
$$
\sum_{j=1}^{3}x_{ij}=a_{i} \quad i=1,2 \quad \text{(origine)} 
$$
Vincolo sulla quantità di materiale richiesto per ogni impianto
$$
\sum_{i=1}^{2} x_{ij}=b_{j} \quad j=1,2,3 \quad \text{(destinazione)}
$$


> [!info] Soluzione in python
> Per la soluzione in python consultare: [[esercizio-miniere.py]] 
