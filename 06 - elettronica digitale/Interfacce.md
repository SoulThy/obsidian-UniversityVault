---
date: 2025-05-23
tags:
  - elettronica-digitale
cssclasses:
---
# Interfacce di Comunicazione Digitale

![[2025-05-23 2025-05-23 15.04.26.excalidraw]]

## UART (Universal Asynchronous Receiver-Transmitter)

- **Pro:** utilizza solo due fili → semplice.
- **Contro:** è relativamente lenta.
- Quando la comunicazione è **inattiva**, la linea è a livello logico **alto (1)**.
- Per iniziare la trasmissione, il trasmettitore porta la linea a livello **basso (0)** (start bit).
- Metafora utile: come una corsa — bandiera in alto si attende, bandiera giù si parte.
- Trasmissione di massimo 8 bit per pacchetto (limiti imposti da **eye diagram** e **jitter**).

## SPI (Serial Peripheral Interface)

- Protocollo **sincrono**: usa un segnale di clock.
- **Linee principali:**
  - `MOSI`: Master Out Slave In
  - `MISO`: Master In Slave Out
  - `SCLK`: Clock
  - `SSEL`: Slave Select
- La trasmissione parte quando il segnale `SSEL` passa da **alto a basso**.
- La comunicazione continua finché `SSEL` resta basso.
- In caso di **più dispositivi**, quelli non selezionati devono **rilasciare il bus** impostando l’uscita in **alta impedenza** (`MOSI <= 1'bZ`).
- Esempio di sequenza: inizio con `1100`, fine con `0011`.
