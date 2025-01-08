# Sistemi di tipo K (errore a regime per ingressi polinomiali)

Un sistema di controllo (ad un solo ingresso ed una sola uscita) si dice di tipo k se la risposta a regime permanente all’ingresso canonico $u(t)=\frac{t^k}{k!}$﻿ differisce da essa per una quantita’ costante diversa da 0.

Se il sistema e’ di tipo k questo significa che la funzione di trasferimento dell’errore sarà:
$$
W_e(s)=s^ k(\frac{1}{k!}\frac{d^kW_e(s)}{d^ks}|_{s=0}+\dots)=s^k\bar W_e(s) \implies F(s) = \frac{1}{s^k}\bar F(s)
$$
Ossia se diciamo che il sistema e’ di tipo k allora stiamo dicendo che ha k poli in zero.

Il concetto di sistema di tipo k e’ molto utile per determinare l’errore dato un ingresso polinomiale, infatti per un sistema di tipo k, tutti gli ingressi polinomiali di ordine inferiore al k-esimo commetteranno un errore nullo a regime; questo e’ verificabile applicando la formula per trovare l’errore a regime (utilizzando l’ipotesi di sistema di tipo k si andranno a cancellare gli opportuni $W_e(0)$﻿ , $\frac{dW_e(s)}{ds}|_{s=0} \dots$﻿).

![[image 10.png]]

## Introducendo un guadagno sul ramo di retroazione

![[image 11.png]]

utile:

Il calcolo per l’errore a regime permanente risulta:

- per sistemi di tipo 0 → $e_{rp}=\frac{K_d}{1+\frac{K_F}{K_d}}$﻿
- per sistemi di tipo-k → $e_{rp}=\frac{Kd}{\frac{1}{K_d}K_F}$﻿
