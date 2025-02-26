---
date: 2025-02-26
tags:
  - elettronica-digitale
cssclasses:
---
# Porte logiche

## L'inverter
È la porta logica più semplice da realizzare.  
Dato un ingresso $A$ e un'uscita $B$, l'inverter garantisce che:  
$$
B=\bar{A}
$$

## Buffer
Il *buffer* è utile per isolare circuiti e prevenire interferenze tra di essi.

## Porta NAND
La porta *NAND* restituisce il valore negato dell'operazione AND tra due ingressi.  
$$
C=\overline{A\cdot B}
$$

## Porta NOR
La porta *NOR* restituisce il valore negato dell'operazione OR tra due ingressi.  
$$
C=\overline{A+B}
$$

## Multiplexer
Il *multiplexer* ha più ingressi e una sola uscita.  
Un segnale di selezione sceglie quale ingresso deve essere trasmesso in uscita.  
$$
C=(A\cdot \bar{S})+(B\cdot S)
$$

## Demultiplexer
Il *demultiplexer* ha un ingresso e più uscite.  
Un segnale di selezione determina a quale uscita verrà trasmesso il segnale.  
$$
\begin{align}
A=C\cdot \bar{S} \\
B=C\cdot S
\end{align}
$$

## Porta XOR
La porta *XOR* restituisce 1 solo se gli ingressi sono *diversi*.  
All'XOR piacciono i *diversi*!  
In linguaggio C, l'operatore XOR è rappresentato dal simbolo `"^"`.  
$$
C=(A\cdot \bar{B})+(\bar{A}\cdot B)
$$

## Porta XNOR
La porta *XNOR* restituisce 1 solo se gli ingressi sono *uguali*.  
All'XNOR piacciono i *simili*!  
$$
C=A\cdot B+\bar{A}\cdot \bar{B}
$$

## Inverter Tristate
Ha una funzione di *abilitazione* ($ENABLE$).  
- Quando $EN=1$, funziona come un normale inverter.  
- Quando $EN=0$, l'uscita assume lo stato di *alta impedenza* ($Z$), disattivando il segnale e permettendo ad altri circuiti di prendere il controllo.  

## Tristate Buffer
- Quando $EN=1$, il *buffer tristate* lascia passare il segnale d’ingresso, quindi $B=A$.  
- Quando $EN=0$, l'uscita viene *disattivata* e assume lo stato di *alta impedenza* ($Z$).  

# Teoremi

## Teoremi di assorbimento
Questi teoremi dimostrano come sia possibile eliminare una variabile ridondante.  
$$
\begin{align}
A+(A\cdot B)=A \\
A\cdot(A+B)=A
\end{align}
$$

## Teoremi distributivi
Si può distribuire l'operazione *OR* e l'operazione *AND*.  
Questi teoremi sono *utilissimi* per la *sincronizzazione* delle porte logiche, poiché rendono le espressioni *simmetriche* rispetto a un ingresso.  
Si noti, infatti, la simmetria nella variabile $A$ nelle formule seguenti:  
$$
\begin{align}
A\cdot(B+C)=(A\cdot B)+(A\cdot C) \\
A+(B\cdot C)=(A+B)\cdot(A+C)
\end{align}
$$

## Teoremi associativi
L'ordine delle operazioni non influisce sul risultato.  
$$
\begin{align}
A+(B+C)=(A+B)+C \\
A\cdot (B\cdot C)=(A\cdot B)\cdot C
\end{align}
$$

## Teorema di De Morgan
Il teorema di *De Morgan* permette di trasformare AND in OR (e viceversa) invertendo i termini.  
$$
\begin{align}
\overline{A\cdot B} = \bar{A}+\bar{B} \\
\overline{A + B} = \bar{A}\cdot \bar{B}
\end{align}
$$
![[Drawing 2025-02-26 12.53.40.excalidraw]]  
Possiamo quindi riscrivere l'operazione OR come:  
$$
A+B=\overline{\overline{A+B}}=\overline{\bar{A}\cdot \bar{B}}
$$

# Esercizio di semplificazione
![[2025-02-26 2025-02-26 13.03.18.excalidraw]]

# Utile al fine degli esercizi
![[2025-02-26 2025-02-26 13.16.14.excalidraw]]
