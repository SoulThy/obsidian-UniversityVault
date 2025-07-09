# Forma canonica osservabile - Costruzione di $T^{-1}$

## Obiettivo

Portare un sistema dinamico lineare nella **forma canonica osservabile**, tramite una trasformazione di coordinate:

$$
x = T^{-1} z \quad \text{con} \quad \dot{z} = A_o z + B_o u,\quad y = C_o z
$$

dove $A_o$ ha la struttura:

$$
A_o =
\begin{bmatrix}
A_{oo} & A_{on} \\
0 & A_{nn}
\end{bmatrix}
$$

- $A_{oo}$: dinamica **non osservabile** ($m \times m$)
- $A_{nn}$: dinamica **osservabile** ($n - m \times n - m$)

---

## Passaggi per costruire $T^{-1}$

Supponi $n$ stato totali e rango della matrice di osservabilità $\mathcal{O}$ uguale a $m$.

1. **Costruisci la matrice di osservabilità**:
   $$
   \mathcal{O} =
   \begin{bmatrix}
   C \\
   CA \\
   \vdots \\
   CA^{n-1}
   \end{bmatrix}
   $$

2. **Calcola una base dello spazio non osservabile**, ovvero il **nucleo** di $\mathcal{O}$:
   - Dimensione: $n - m$
   - Trova $n - m$ vettori linearmente indipendenti $v_1, \dots, v_{n-m}$ tali che $\mathcal{O} v_i = 0$

3. **Completa la base dello spazio di stato**:
   - Trova $m$ vettori $w_1, \dots, w_m$ tali che $\{v_1, \dots, v_{n-m}, w_1, \dots, w_m\}$ sia una base di $\mathbb{R}^n$

4. **Costruisci $T^{-1}$ come**:
   $$
   T^{-1} =
   \begin{bmatrix}
   v_1 & \cdots & v_{n-m} & w_1 & \cdots & w_m
   \end{bmatrix}
   $$

   - Le **prime** $n - m$ colonne generano lo spazio **non osservabile**
   - Le **ultime** $m$ colonne generano lo spazio **osservabile**

---

## Risultato

Con questa trasformazione, il sistema è riscritto in una forma dove la dinamica osservabile e non osservabile sono separate

---

# Forma canonica raggiungibile - Costruzione di $T^{-1}$

## Obiettivo

Portare un sistema dinamico lineare nella **forma canonica raggiungibile**, tramite una trasformazione di coordinate:

$$
z = T x \quad \Rightarrow \quad \dot{z} = A_r z + B_r u,\quad y = C_r z
$$

dove $A_r$ ha la struttura:

$$
A_r =
\begin{bmatrix}
A_{cc} & 0 \\
A_{nc} & A_{nn}
\end{bmatrix}, \quad
B_r =
\begin{bmatrix}
B_c \\
0
\end{bmatrix}
$$

- $A_{cc}$: dinamica **controllabile** ($r \times r$)
- $A_{nn}$: dinamica **non controllabile** ($(n - r) \times (n - r)$)

---

## Passaggi per costruire $T^{-1}$

Supponi $n$ stato totali e rango della matrice di controllabilità $\mathcal{C}$ uguale a $r$.

1. **Costruisci la matrice di controllabilità**:
   $$
   \mathcal{C} = \begin{bmatrix} B & AB & A^2B & \cdots & A^{n-1}B \end{bmatrix}
   $$

2. **Trova una base dello spazio controllabile**:
   - Estrai $r$ colonne linearmente indipendenti da $\mathcal{C}$: $v_1, \dots, v_r$
   - Questi generano lo **spazio raggiungibile**

3. **Completa la base dello spazio di stato**:
   - Trova $n - r$ vettori $w_1, \dots, w_{n-r}$ tali che $\{v_1, \dots, v_r, w_1, \dots, w_{n-r}\}$ sia una base di $\mathbb{R}^n$

1. **Costruisci $T^{-1}$ come**:
   $$
   T^{-1} =
   \begin{bmatrix}
   v_1 & \cdots & v_r & w_1 & \cdots & w_{n-r}
   \end{bmatrix}
   $$

   - Le **prime** $r$ colonne generano lo spazio **controllabile**
   - Le **ultime** $n - r$ colonne generano lo spazio **non controllabile**

---

## Risultato

Con questa trasformazione, il sistema è riscritto in una forma dove la dinamica controllabile e non controllabile sono separate.
