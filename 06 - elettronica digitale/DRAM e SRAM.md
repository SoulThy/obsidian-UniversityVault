---
date: 2025-03-14
tags:
  - elettronica-digitale
cssclasses:
---
# DRAM e SRAM
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

# ESERCIZIO Calcolo del Tempo di Refresh nella DRAM

La **DRAM (Dynamic Random Access Memory)** necessita di un **refresh periodico** per mantenere l'informazione memorizzata. Questo avviene perché i dati sono memorizzati come carica in **piccoli condensatori**, che tendono a scaricarsi nel tempo a causa delle **correnti di perdita**.

### Scarica del condensatore DRAM

Ogni cella DRAM è essenzialmente un **circuito RC** in cui la carica segue una curva di scarica esponenziale:

$$ V(t) = V_{dd} \cdot e^{-t/RC} $$

Il punto critico si verifica quando la tensione scende a metà del valore di alimentazione, ovvero:

$$ \frac{V_{dd}}{2} = V_{dd} \cdot e^{-t/RC} $$

Risolvendo per \( t \):

$$ \frac{1}{2} = e^{-t/RC} $$
$$ \ln(\frac{1}{2}) = -\frac{t}{RC} $$
$$ -\ln(2) = -\frac{t}{RC} $$
$$ t_{dangerous} = RC \cdot \ln(2) $$

Questo valore rappresenta il **tempo massimo** entro cui è necessario rinfrescare la memoria prima che l'informazione diventi illeggibile.

## Margine sotto PVT

Per tenere conto delle variazioni dovute a **Process, Voltage e Temperature (PVT)**, vogliamo **marginarci per esempio di un fattore 10**. Questo significa che dobbiamo considerare come tempo pericoloso: 

$$ t_{\text{dangerous}}\star = \frac{t_{dangerous}}{10} = \frac{RC \cdot \ln(2)}{10} $$

Di conseguenza, la **frequenza di refresh** deve essere:

$$ f_{refresh} > \frac{1}{t_{\text{dangerous}}\star} = \frac{10}{RC \cdot \ln(2)} $$

## Considerazioni pratiche
- **Il costo del margine di sicurezza** è un maggiore consumo energetico, poiché il refresh avviene più frequentemente.