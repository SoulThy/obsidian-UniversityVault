---
date: 2025-05-16
tags:
  - elettronica-digitale
cssclasses:
---
## Discorso sul minimizzare il critical path in base al disegno
![[2025-05-16 2025-05-16 14.32.07.excalidraw]]


## Esempio esercizio di cui non ci ho capito nulla gg

> [!warning] Calcoli dell'esercizio
> Fanno riferimento allo schema che vediamo sopra pero' post semplificazione per critical path bilanciato.

$$
C=10fF,In=Ip,Vdd=5V,f_{target}=1Ghz
$$
Se quello e' il nostro target la $t_{raise} = \frac{1}{6}ns$.
Se noi ragioniamo in logica negata abbiamo un critical path da 5 e quindi $t_{rise}=\frac{1}{5}ns$.
Quanta corrente deve tirare il nostro inverter?
$$
\Delta t_{r,f}=\frac{C}{Ip,n}\cdot Vdd
$$
$$
Ip,n=\frac{C\cdot Vdd}{t_{rise}}=2.5\mu A
$$
$$
\mu_{n}Cox =\frac{5\mu A}{V^2}
$$
$$
V_{th} = 400mV
$$
$$
I = \mu_{n}Cox\cdot \frac{W}{L}(V_{dd}-V_{th})^2
$$
$$
W = \frac{I\cdot L_{min}}{\mu_{n}Cox(V_{dd}-V_{th})^2}
$$

$L_{min}$ dipende dalla tecnologia.
$$
In=Ip \implies \mu_{n}Cox\cdot \frac{W_{p}}{L}(V_{dd}-V_{thp})^2=\mu_{n}Cox\cdot \frac{W_{n}}{L}(V_{dd}-V_{thn})^2
$$