# Determinare la banda passante tramite i grafici di Nichols

Tramite i grafici di Nichols ([http://users.diag.uniroma1.it/~digiamb/website/MaterialeDidattico/Nichols.pdf](http://users.diag.uniroma1.it/~digiamb/website/MaterialeDidattico/Nichols.pdf)) e’ facile determinare il valore di $W(j\omega)$﻿ di modulo e fase partendo dal modulo e fase della $F(j\omega)$﻿.

Inoltre dal grafico troviamo facilmente la seguente relazione:

- $M_\varphi < 90\degree \implies$﻿(frequenza di taglio) $\omega_t < B_3$﻿ (banda passante)
- $M_\varphi > 90\degree \implies$﻿(frequenza di taglio) $\omega_t > B_3$﻿ (banda passante)

Dove la frequenza di taglio ricordiamo essere la frequenza per cui $|F(j\omega)|_{\omega =\omega_t} = 0dB$﻿

  

In questa maniera tramite il margine di fase possiamo già avere una stima (molto vaga) della banda passante, infatti sapremo se essa viene prima o dopo la frequenza di taglio.

In generale per tutti i sistemi tranquilli abbiamo un altra relazione che ci aiuta a determinare con più precisione la banda passante:

$2\omega_t > B_3$

Quindi:

$M_\varphi<90\degree \implies \omega_t<B_3<2\omega_t$
