---
date: 2025-06-01
tags:
  - elettronica-digitale
cssclasses:
---
# Interfacce
## UART

Universal asynchronous receiver/transmitter (UART), e' un protocollo di comunicazione seriale asincrona, cioè non utilizza un clock condiviso tra i dispositivi.
La sincronizzazione tra trasmettitore e ricevitore avviene grazie la struttura del segnale, che include un bit di start, i bit di dati, eventualmente un bit di parità e in fine un bit di stop.
UART utilizza solamente due linee per comunicare: RX per ricevere e TX per trasmettere.
I parametri che trasmettitore e ricevitore devono stabilire a priori sono la velocità di trasmissione dati (baud rate), numero di bit inviati, tipo di controllo di parità se presente.
Il vantaggio di UART sta nella sua semplicità di utilizzo e numero ridotto di fili. Tuttavia non consente la comunicazione con piu' dispositivi tramite lo stesso bus. 

> [!example]- ASM UART
![[ASM_UART.drawio.pdf]]
## SPI

Serial peripheral interface (SPI), e' un protocollo di comunicazione seriale sincrona, cioè utilizza un clock condiviso tra trasmettitore e ricevitore.
E' progettato per comunicazioni tra un Master ed uno o più slave.
Utilizza almeno 4 fili di connessioni: MOSI (Master Out Slave In), MISO (Master In Slave Out), SCLK (Clock condiviso), SSEL (Slave Select).
Il Master genera il clock su SCLK e controlla quando iniziare la comunicazione, per ogni ciclo di clock il Master trasmette un bit su MOSI e legge un bit da MISO comunicando con lo salve selezionato tramite SSEL (attivo basso).
Esistono varie configurazioni ("modalità") di SPI che differiscono dal tipo di logica utilizzata per il SCLK e per quando campionare l'informazione da MOSI/MISO (falling o rising edge).

E' possibile ottenere una comunicazione con più Slave utilizzando uno dei due tipi di configurazione: Regular Mode o Daisy-Chain Mode.
In Regular Mode Il Master avrà un pin di selezione Slave (SSEL) per ogni Slave con il quale possibilmente comunicherà (SSEL1,SSEL2,...), nella configurazione Daisy-Chain si utilizza un singolo (SSEL) e i Slave sono connessi uno dopo l'altro in cascata per propagare l'informazione a tutti i Slave.
In caso di **più dispositivi**, quelli non selezionati devono **rilasciare il bus** impostando l’uscita in **alta impedenza** (`MOSI <= 1'bZ`).


> [!warning] Come interfacciarsi con SPI
> E' facile fare un po' di confusione quando bisogna interfacciarsi con SPI per la convenzione differente che puo' essere utilizzata quando ci si riferisce a MOSI/MISO.
> Se utilizziamo la convezione secondo la quale ogni dispositivo dal suo punto di vista e' Master, due dispositivi che vogliono comunicare avranno:
> - MISO (device1) <--> MOSI (device2)
> - MOSI (device1) <--> MISO (device2).
> Nel caso in dal punto di vista del dispositivo esso di identifica come Slave, il collegamento sara': 
> - MISO(device1) <--> MISO(device2)
> - MOSI(device1)<-->MOSI(device2).

### ASM SPI

> [!example]- ASM SPI
> ![[ASM_SPI.drawio.pdf]]