---
date: 2025-03-07
tags:
  - elettronica-digitale
cssclasses:
---

## *Reset pull-up* e *Reset pull-down*

Il *reset pull-up* e il *reset pull-down* sono tecniche utilizzate per garantire che un circuito digitale assuma uno stato definito all'accensione o in condizioni di riposo.

- **Reset pull-up**: utilizza una resistenza collegata a *Vcc* per forzare il segnale di reset a livello alto quando il circuito non sta subendo un reset attivo.
- **Reset pull-down**: utilizza una resistenza collegata a *GND* per forzare il segnale di reset a livello basso quando il circuito non è in reset.

Queste configurazioni evitano che il segnale di reset rimanga in uno stato indefinito (*floating*), il che potrebbe causare comportamenti imprevedibili nel sistema.

## Implementazione *Mealy* per un sistema di parcheggio

![[{51A98B52-6175-4001-B8D3-AE127D5AC4B6}.png]]

(La soluzione continua con mappe di Karnaugh e implementazione basata sulle slide)
