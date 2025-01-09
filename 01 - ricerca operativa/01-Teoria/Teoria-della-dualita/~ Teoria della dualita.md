# Teoria della Dualità

A ogni problema di [[Caratterizzazione di un problema di PL|programmazione lineare]] corrisponde un suo **duale**. Questo è interessante perché certe volte possiamo semplificare la soluzione del problema passando al suo duale.

Se il problema primario richiede la *minimizzazione*, allora il suo duale richiederà la *massimizzazione* e viceversa.

## Formalmente

Formalmente l'idea è la seguente: dato un problema **Primale** (P):
$$
\begin{align}
\text{min } & f(x) \quad \tag P \\
x \in S
\end{align}
$$
Esiste un problema **Duale** (D):
$$
\begin{align}
\text{max } & \psi(u) \quad \tag D \\
u \in U
\end{align}
$$
tale che 
$$
\begin{align}
\text{inf }f(x)  \geq \text{sup }\psi(u) \\
x \in S ; u \in U
\end{align}
$$
## Collegamenti
- [[Rilassamento]]
- [[Rilassamento lagrangiano]]
- [[Rilassamento lagrangiano in PL]]
- [[Dualita lineare]]
- [[Regole di costruzione di un problema duale]]
- [[Teorema della dualita debole]]
- [[Corollario della dualità debole]]
- [[Teorema della dualita forte]]
- [[Condizioni di ottimalita nella PL]]
- [[Relazione problema primale-duale illimitato e insieme ammissibile vuoto]]
- [[Teorema degli scarti complementari]]
- [[Tabella riassuntiva di risultati possibili della dualita in PL]]