---
date: 2025-02-28
tags:
  - elettronica-digitale
cssclasses:
---

## *Latch*  
I *latch* sono circuiti sequenziali bistabili (*bistabili*, ossia con due stati stabili, 1 e 0) capaci di memorizzare un bit di informazione.  
Sono fondamentali per sincronizzare i segnali nei circuiti sequenziali.

La logica combinatoria $\implies$ memorie $\implies$ macchine a stati.

> [!info]
> Senza *latch* non sarebbe possibile realizzare computer e sistemi di controllo digitali.

### *Latch* SR con porte NAND  
È composto da due porte NAND interconnesse.  
Per descrivere il comportamento del *latch*, è utile partire dalla tabella di verità della NAND. Notiamo che l'unico caso in cui la NAND produce uno $0$ è quando entrambi gli ingressi sono a $1$, mentre basta che un ingresso sia a $0$ per ottenere in uscita $1$.

Un aspetto interessante è che la NAND può essere vista come se avesse uno stato di controllo e uno di input. Se consideriamo gli ingressi $(A, B)$, quando $A = 1$, l'uscita dipende esclusivamente da $B$, funzionando quindi come un invertitore.

### *Latch* SR con porte NOR  
Si può ottenere applicando il [[Algebra booleana#Teorema di De Morgan|Teorema di De Morgan]].

### Cosa succede se un *latch* non ha un segnale di *enable* o *gate*?  
Un *latch* base non possiede un segnale di *enable* o *gate*, il che comporta instabilità nei cambiamenti dello stato memorizzato.  
Per questo motivo, si preferiscono i *flip-flop* o i *latch* con segnale di *enable*.

### Introduzione del *clock*  
Il *clock* è fondamentale perché permette al *latch* di cambiare stato solo a determinati intervalli di tempo.

## Introduzione ai *Flip-Flop*  
### Differenza con i *latch*  
- Il *latch* aggiorna il suo stato in base agli ingressi continuamente, purché l’*enable* sia attivo ($=1$).  
- Il *flip-flop* cambia stato solo sul fronte del segnale di *clock*.

### *Master-Slave*  
Le informazioni vengono gestite in due fasi, permettendo una maggiore stabilità e controllo del segnale.

## Consultare le slide del professore per ulteriori dettagli.
