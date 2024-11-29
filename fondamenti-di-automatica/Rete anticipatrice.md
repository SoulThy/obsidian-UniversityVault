Essa connessa in cascata fa traslare verso l’alto il modulo della funzione di trasferimento di una certa quantità mentre aumenta (anticipa) la sua fase in un intervallo opportuno.

Se ci poniamo il problema di voler sistemare la fase data una funzione di trasferimento, per esempio vogliamo alzarla di una quantità nella sua frequenza di taglio per migliorare il margine di fase, ci ricordiamo che possiamo aggiungere un termine binomio al numeratore o al denominatore. Infatti un zero della forma $(1+s\tau)$﻿ che chiamerò “positiva” aumenta la nostra fase cosi come un polo della forma $(1-s\tau)$﻿ che chiamerò “negativa”. Eviteremo di aggiungere termini della forma negativa in quanto introducono un polo positivo ossia cambiano il $P_p$﻿, estremamente importante per determinare la stabilita’ tramite i giri in Nyquist. Inoltre ricordandoci che non possiamo semplicemente aggiungere uno zero (sarebbe una funzione impropria) avremo che la nostra rete sarà della forma:

$R(j\omega)=\frac{1+j\omega\tau}{1+j\omega\frac{\tau}{m}}=\frac{1+j\omega'}{1+j\frac{\omega'}{m}}$

Dove non ci interessa dove sono $\tau_1$﻿ e $\tau_2$﻿ ma la loro distanza, quindi introduciamo $'m'$﻿ il quale e’ strettamente legato all’aumento di fase.

Utilizzeremo dei grafici ([http://users.diag.uniroma1.it/~digiamb/website/MaterialeDidattico/Reti.pdf](http://users.diag.uniroma1.it/~digiamb/website/MaterialeDidattico/Reti.pdf)) per stabilire $m$﻿, $\omega'$﻿ e quindi il valore di $\tau$﻿ affinché avvenga un aumento di fase corretto nella nostra frequenza desiderata $w_d$﻿.

$\omega'=\omega\tau \implies \tau=\frac{\omega'}{\omega_d}$

Attenzione! Introdurre una rete comporta anche una variazione nel modulo che potrebbe essere più o meno dannosa, quindi sarà necessario scegliere con cautela i valori di $\omega'$﻿.