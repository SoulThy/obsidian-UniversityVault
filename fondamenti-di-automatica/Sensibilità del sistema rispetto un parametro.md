# Sensibilità del sistema rispetto un parametro

Abbiamo visto che idealmente in un sistema retro-azionato l’uscita segue l’ingresso ossia abbiamo un errore nullo. Ma in certe applicazioni e’ possibile che il processo vari e di conseguenza tutto il sistema varia, cosi ottenendo un uscita modificata. Esempio: in un treno entrano ed escono persone, per cui abbiamo una variazione di un parametro.

Per quantificare quanto varia il sistema data una variazione di un parametro, definiamo sensibilità di un sistema:

$S_p^W(s)=\frac{\frac{dW(s)}{W(s)}}{\frac{dp}{p(s)}}$

Non e’ altro che la derivata della funzione di trasferimento del sistema rispetto al parametro p, tutto normalizzato.

Se per esempio ci interesserà calcolare la variazione del guadagno rispetto il parametro, calcoleremo:

$S_p^W(s)|_{s=0}$

Idealmente vogliamo che $S_p^W(s) =0 $﻿, questo significa che il sistema non e’ sensibile alle variazioni del parametro o in altre parole e’ “robusto”.

E’ interessante vedere che la sensibilità del sistema può essere divisa in due diverse sensibilità:

$S_p^W(s)=S_P^W(s)\cdot S_p^P(s)$

Dove:

$S_P^W(s)=\frac{1}{1+F(s)}=W_e(s)$
