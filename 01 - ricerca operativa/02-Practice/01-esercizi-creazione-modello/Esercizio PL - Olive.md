Esercizio che fa riferimento a [[olive_testo.pdf]].
Dove ho associato ai vari attributi le seguenti lettere:

| Prezzo  | Quantita Min | Quantita Max | Resa    | Acidita | Ore Max Reparto | Ore necessarie per lavorare 100kg di olive $i$ nel reparto $j$ |
| ------- | ------------ | ------------ | ------- | ------- | --------------- | -------------------------------------------------------------- |
| $p_{i}$ | $m_{i}$      | $M_{i}$      | $r_{i}$ | a_i     | $hM_{j}$        | $h_{ij}$                                                       |
Dove $i$ fa riferimento ai vari tipi di olive e $j$ fa riferimento al reparto (A,B,C).
# Parte 1
Nella prima parte, per produrre un tipo di olio l'oliva deve passare necessariamente per tutti e 3 i reparti: A,B,C.
## Funzione obiettivo
$$
\text{min } \sum_{i=1}^{6} p_{i}x_{i}
$$
## Vincoli
### Vincolo sulla quantità minima di olive
$$
x_{i} \geq m_{i} \quad i=1,\dots,6
$$
### Vincolo sulla quantità massima di olive
$$
x_{i} \leq M_{i} \quad i=1,\dots,6
$$
### Vincolo sui litri da produrre
$$
\sum_{i=1}^{6} r_{i}x_{i}=1200
$$
### Vincoli sulle ore massime di lavorazione dei reparti
Vincolo per il reparto A che corrisponde all'indice 1.
$$
\sum_{i=1}^{6} h_{i1}x_{i}\leq 70
$$
Vincolo per il reparto B che corrisponde all'indice 2.
$$
\sum_{i=1}^{6} h_{i_{2}}x_{i}\leq 55
$$
Vincolo per il reparto C che corrisponde all'indice 3.
$$
\sum_{i=1}^{6} h_{i_{3}}x_{i}\leq 55
$$
Potevamo anche raggruppare tutte e 3 le disequazioni come:
$$
\sum_{i=1}^{6} x_{i}h_{ij}\leq hM_{j} \quad j=1,\dots,3
$$
### Vincolo sull'acidità nel totale di litri prodotti
$$
\sum_{i=1}^{6} a_{i}r_{i}x_{i}\leq 0.7\left( \sum_{i=1}^{6} r_{i}x_{i} \right)
$$
# Parte 2
Nella seconda parte, per produrre un tipo di olio posso utilizzare un unico reparto A,B,C.
Non e' necessario che A,B e C lavorino insieme per produrre quel prodotto.
## Funzione obiettivo
$$
\text{min }\sum_{i=1}^{6} (p_{i}\sum_{j=1}^{3}x_{ij} )
$$
## Vincoli
### Vincolo sulla quantità minima di olive
$$
\sum_{j=1}^{3} x_{ij}\geq m_{_{i}} \quad i=1,\dots,6
$$
### Vincolo sulla quantità massima di olive
$$
\sum_{j=1}^{3} x_{ij}\leq M_{i} \quad i=1,\dots,6
$$
### Vincolo sui litri da produrre
$$
\sum_{i=1}^{6}(r_{i}\sum_{j=1}^{3} x_{ij})=1200
$$
### Vincoli sulle ore massime di lavorazione dei reparti
$$
\sum_{i=1}^{6} x_{ij}h_{ij}\leq hM_{j} \quad j=1,\dots,3
$$
### Vincolo sull'acidità nel totale di litri prodotti
$$
\sum_{i=1}^{6} (a_{i}r_{i}\sum_{i=1}^{3} x_{ij})\leq 0.7(\sum_{i=1}^{6}( r_{i}\sum_{j=1}^{3} x_{ij}))
$$
### Vincolo sulla quantità' di frantoio nel totale
$$
\sum_{j=1}^{3} x_{1j}\geq 0.1\left( \sum_{i=1}^{6} \sum_{j=3}^{3} x_{ij} \right)
$$


> [!note]
> Soluzione python parte 1 : [[parte1.py]]
