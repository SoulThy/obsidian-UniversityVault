# Robustezza ai disturbi

![[image 18.png]]

Il disturbo potrebbe essere posizionato in punti diversi, vediamo cosa accade in base a dove viene applicato. Studieremo caso per caso, cosi poi sfruttando la linearita’ avremo l’immagine completa.

## Disturbi polinomiali

1. Disturbo $d_2(t)$﻿.
    
    Questo disturbo si trova dopo il processo.
    
    $W_{d_2}(s) =\frac{1}{1+C(s)P(s)} = \frac{1}{1+F(s)}= W_e(s)$﻿
    
    La funzione di trasferimento e’ la stessa di quella dell’errore, quindi valgono tutte le considerazioni svolte per . Esempio: se ho un disturbo costante (quindi ordine 0), per sistemi di tipo $\geq1$﻿ a regime il disturbo e’ nullo.
    
2. Disturbo $d_1(t)$﻿.
    
    Questo disturbo si trova tra il controllore e il processo.
    
    $W_{d_1}(s) = \frac{P(s)}{1+C(s)P(s)}$﻿
    
    Se abbiamo un disturbo costante e’ necessario che il polo in zero affinché il disturbo a regime sia nullo si trovi nel controllore, $C(s)=\frac{1}{s} \hat C(s)$﻿.
    
3. Disturbo $d_3(t)$﻿.
    
    Questo disturbo si trova prima del controllore.
    
    $W_{d_3}(s) = \frac{F(s)}{1+F(s)}=W(s)$﻿
    
    Di questo disturbo non possiamo fare molto… effettivamente per dove e’ situato, il sistema non riesce a percepire se si tratti dell’ingresso che vogliamo o e’ un ingresso disturbato.
    

Importante! Notiamo come per poter fare qualcosa contro i disturbi e’ necessario che il posizionamento dei poli in zero avvenga nei blocchi che precedono il disturbo stesso.

## Disturbi sinusoidali

1. Disturbo $d_2(t)$﻿.
    
    Proprio come il caso per , se il sistema e’ tale per cui l’uscita segue l’ingresso ossia e’ già gestito l’errore, quindi $|F(j\omega)|\geq \frac{1}{\varepsilon}+1$﻿, tale disturbo a regime e’ nullo.
    
2. Disturbo $d_1(t)$﻿.
    
    $W_{d_1}(s) = \frac{P(s)}{1+C(s)P(s)}$﻿
    
    Sara’ necessario avere che $|F(j\omega)|\geq \frac{P(j\omega)}{\varepsilon}+1$﻿ affinché a regime il disturbo sia nullo.
    
    In questo caso andremo ad alzare $C(s)$﻿ per avere questa equazione verificata.
    
3. Disturbo $d_3(t)$﻿.
    
    Non possiamo fare molto.
    
