---
date: 2025-03-12
tags:
  - elettronica-digitale
cssclasses:
---
## Reset implementato sincrono vs asincrono
![[Correzione homework 2 + tips 2025-03-12 15.13.30.excalidraw]]
## Interfacciarsi con l'uscita in modo dire
![[Correzione homework 2 + tips 2025-03-12 15.19.07.excalidraw]]
E' bene inserire un buffer quando ci interfacciamo direttamente con l'uscita.
Questo permette di eliminare glitch e comportamenti inaspettati.
## Toggle-D FLIP FLOP
![[Correzione homework 2 + tips 2025-03-12 15.24.15.excalidraw]]
Questo FLIP FLOP funziona come un FLIP FLOP tipo 'T' (Toggle). Esso divide come il 'T' la frequenza del clock per 2.
## Reset attivo ALTO vs BASSO
- Reset attivo alto
	 Stiamo dicendo che nel momento in cui viene inserito un '1' nel reset, ci aspettiamo che il circuito resetti.
- Reset attivo basso
	 Stiamo dicendo che nel momento in cui viene inserito un '0' nel reset, ci aspettiamo che il circuito resetti.
Per distinguere i due tipi di reset, oltre che scriverlo a parole nelle specifiche, utilizziamo due notazioni:
![[Correzione homework 2 + tips 2025-03-12 15.27.48.excalidraw]]
## Mappa-K con 5 variabili
$$
G(A,B,C,D,E)=F(A,B,C,D)E\cdot F(A,B,C,D)\bar{E}
$$
Dove sintetizziamo la mappa K $F(A,B,C,D)$.
## Esercizio Contatore HOMEWORK2
![[ESERCIZIOCONTATORE.pdf]]