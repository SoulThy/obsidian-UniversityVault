>Questo esempio utilizza le tecniche descritte in [[Caratterizzazione di un problema di PL in forma standard]] per ottenere la forma standard.

Consideriamo il seguente problema di massimizzazione: $$ \begin{align} \text{max } -4x_{1}+2x_{2}-3x_{3}+x_{4}-x_{5} \\ 2x_{1}-x_{2}-x_{5}+2x_{4}-x_{5}\geq 2 \\ -x_{1}+2x_{2}-x_{3}-x_{4}+2x_{5} \leq -3 \\ -x_{1}+2x_{2}-x_{3}+2x_{4}-x_{5} = 1 \\ x_{1},x_{3},x_{5}\geq 0 \end{align} $$
### 1. Convertire la funzione obiettivo
Procediamo a trasformarlo in un problema di minimizzazione 
$$ \text{max } c^Tx \iff \text{min }(-c^Tx) $$ $$ \text{min } +4x_{1}-2x_{2}+3x_{3}-x_{4}+x_{5} $$
### 2. Convertire i vincoli in uguaglianze 
$$ \begin{align} 2x_{1}-x_{2}-x_{5}+2x_{4}-x_{5}-s_{1}= 2 \\ -x_{1}+2x_{2}-x_{3}-x_{4}+2x_{5}+s_{2} = -3 \\ -x_{1}+2x_{2}-x_{3}+2x_{4}-x_{5} = 1 \\ x_{1},x_{3},x_{5},s_{1},s_{2}\geq 0 \end{align} $$
Dove abbiamo introdotto variabili aggiuntive $s_1$ e $s_2$ per i vincoli.
### 3. Variabili non vincolate in segno
$$ \begin{align} x_{2}=x_{2}^+ - x_{2}^- \\ x_{4}=x_{4}^+ - x_{4}^- \end{align} $$
Dopo questa operazione, il problema in forma standard avrà **9 variabili** invece di 5. (*Questo e' il prezzo da pagare*)