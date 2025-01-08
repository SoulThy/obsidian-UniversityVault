# Luogo delle radici

Vogliamo studiare i punti per cui il polinomio risulta instabile al variare di K.

$$W(s)=\frac{kn_F(s)}{d_F(s)+kn_F(s)}\implies p(k,s)=d_F(s)+kn_F(s)=0$$

Passando ai moduli e alle fasi, otteniamo le seguenti relazioni fondamentali per stabilire la posizione delle radici al variare di K nel piano complesso.

1. $|K|=\frac{\prod|s-p_i|}{\prod|s-z_i|}$﻿
2. $\sum\angle(s-p_i)-\sum\angle(s-z_i)=\begin{cases} -\pi+2h\pi &\text{se } K>0 \\ 0+2h\pi &\text{se } K<0 \end{cases}$﻿
## Formule utili

- I punti singolari sono AL MASSIMO $(n+m-1)$﻿, dove $n$﻿ e’ il numero di poli e $m$﻿ e’ il numero di zeri
- Il centro degli asintoti lo si trova in $x_c=\frac{\sum p_i-\sum z_i}{n-m}$﻿

## Studiare il $k$﻿ per cui abbiamo l’attraversamento sull’asse immaginario

Se siamo interessati a trovare il valore di $k$﻿ per cui abbiamo un attraversamento dell’asse immaginario ci bastera’ riempire la tabella di Routh e porre la riga numero 1 $=0$﻿ e risolvere per $k$﻿.

## Stabilizzare spostando il centro degli asintoti

Notiamo che avendo a destra dell’asse immaginario sempre un luogo negativo, ci interessera’ spostare il centro degli asintoti in modo tale che per un certo $\hat k>0$﻿ otteniamo la stabilità.

Premessa: possiamo cercare di stabilizzare avendo anche $n-m>2$﻿ (ossia una stella di asintoti) tuttavia stabilizzare in questo caso tramite il luogo delle radici e’ sconsigliato in quanto risulta piu’ laborioso, percio’ trattero’ il caso in cui abbiamo $n-m=2$﻿ ossia un coppia di asintoti ortogonali.

Vogliamo spostare il centro degli asintoti in un $x_c^d$﻿ :

$x_c^d=\frac{\sum p_i+p_c-\sum z_i-z_c}{n-m}=\frac{\sum p_i-\sum z_i}{n-m}+\frac{p_c-z_c}{n-m}$

Dato che abbiamo detto che vogliamo stabilizzare pensando al luogo positivo, questo significa che vogliamo aggiungere uno zero nel controllore che sia negativo in modo tale che per $k$﻿ crescente ci troveremo nel semi piano negativo.

Inoltre volendo spostare a sinistra il centro degli asintoti avendo appena detto che lo zero sara’ negativo, vogliamo che il polo si trovi piu’ a sinistra dello zero appena aggiunto, ossia abbiamo:
$$
\begin{cases} z_c<0 \\ p_c<z_c \end{cases} \implies x_c^d=\frac{\sum p_i-\sum z_i}{n-m}+\frac{p_c+|z_c|}{n-m}
$$
Da questa formula ci bastera’ posizionare lo $z_c$﻿ e trovarci $p_c$﻿ in modo tale che il nostro nuovo centro degli asintoti si trovi proprio in $x_c^d$﻿.

In questo modo abbiamo di fatto aggiungo un controllore del tipo $C(s)=\frac{1+s\tau}{1+s\frac{\tau}{m}}$﻿, ossia una rete anticipatrice.

Consiglio! Se ci interessa la stabilita’, ci conviene posizionare un $z_c$﻿ sopra un $p_i$﻿ esistente nel semi piano negativo, otterremo’ cosi una semplificazione polo/zero e il luogo delle radici risultera’ piu’ semplice da disegnare, e avremo comunque mantenuto $n-m=2$﻿

## Studio con specifiche sul transitorio

### Condizione sulla velocita di convergenza del transitorio

Data $F(s)=k\frac{1}{s+p}\rightarrow Re^{pt}\rightarrow Re^{-\frac{t}{1/p}}$﻿

Dove $1/p = \tau$﻿ costante di tempo. Ricordiamo che il concetto di costate di tempo e’ utile in quanto possiamo sfruttare l’approsimazione per cui se $t=3\tau\implies e^{-\frac{t}{1/p}}=0.0\cdots\simeq 0$﻿.

Troviamo cosi una correlazione tra velocita’ di convergenza del transitorio e posizione del polo.

Esempio: voglio una velocita di convergenza pari a $6\text{ secondi}$﻿, quindi

$ ⁍ $

quindi per tutti i poli $\leq1/2$﻿ ho una velocita di convergenza $\leq6 \text{ secondi}$﻿.

Tramite il luogo delle radici se vogliamo trovare i $k$﻿ che soddisfano tale specifica ci bastera’ applicare al polinomio traslato $p(k,s-\alpha)$﻿.

### Condizione sullo smorzamento

Se siamo in presenza di una condizione sullo smorzamento abbiamo a che fare con poli complessi coniugati. Rispettare la condizione sullo smorzamento significa che avremo un angolo $\theta_{min}$﻿ in cui i poli si dovranno trovare per rispettare la specifica.

Quindi disegneremo il luogo delle radici e se vogliamo trovare i k che soddisfano tale specifica andremo ad applicare sul prodotto dei polinomi ruotati $p(k,se^{j\theta_{min}})\cdot p(k,se^{-j\theta_{min}})$﻿.
