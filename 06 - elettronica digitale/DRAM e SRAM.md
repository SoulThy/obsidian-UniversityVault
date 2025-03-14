---
date: 2025-03-14
tags:
  - elettronica-digitale
cssclasses:
---
## *DRAM*
La *Dynamic Random Access Memory (DRAM)* è il tipo di memoria più utilizzato perché è semplice da realizzare ed economica. Tuttavia, ha lo svantaggio di dover essere periodicamente rinfrescata per mantenere i dati.

### Come evitare la degradazione della carica nel condensatore della *DRAM*
Per evitare la perdita di carica nei condensatori della DRAM, viene utilizzato un *Sense Amplifier*, che rigenera lo stato logico della cella di memoria.  
Il *Sense Amplifier* converte il segnale analogico in digitale, ad esempio trasformando un valore come $0.999873$ in $1$.

### Matrice di celle
La DRAM è organizzata in una matrice di celle e utilizza due segnali principali per l'accesso ai dati:
- **Row Address Strobe (RAS)**: attiva la riga della matrice da cui leggere o scrivere i dati.
- **Column Address Strobe (CAS)**: seleziona la colonna specifica per completare l'accesso alla memoria.

## *SRAM*
La *Static Random Access Memory (SRAM)* è composta da due *inverter* e due *transistor*, motivo per cui occupa più spazio rispetto alla DRAM.

### Qual è il vantaggio?
A differenza della DRAM, la SRAM non necessita di un refresh periodico, poiché l'informazione viene mantenuta stabilmente grazie alla retroazione positiva degli inverter.  
È *molto più veloce* della DRAM ed è utilizzata principalmente per la *cache* e i *registri*. Inoltre, consuma meno energia quando si trova in stato statico.

### Perché è più veloce?
La SRAM è più veloce perché il dato viene mantenuto costante grazie alla retroazione degli inverter, senza necessità di operazioni di refresh.  
Nella DRAM, invece, il dato tende a degradarsi e deve essere periodicamente ricaricato nel condensatore, introducendo un ritardo nell'accesso.

## *Differenze tra DRAM e SRAM*
- La DRAM richiede un meccanismo di *refresh* per mantenere l’informazione, mentre la SRAM no.
- Nei circuiti della DRAM è necessario rappresentare la logica di refresh, mentre nella SRAM ci sono solo *tri-state buffer* per gestire *DataIN* e *DataOUT*.
- La DRAM è più economica e densa, ma più lenta; la SRAM è più veloce ma occupa più spazio ed è più costosa.