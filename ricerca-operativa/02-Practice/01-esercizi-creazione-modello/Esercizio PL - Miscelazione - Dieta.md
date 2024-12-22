Riferimento: [[ModelliMiscelazione_Intro.pdf]].
Formulazione di un modello per decidere una dieta di costo minimo che soddisfi fabbisogni di carboidrati, proteine e grassi.

Una dieta prescrive fabbisogni minimi giornalieri di nutrienti:
==carboidrati (150g), proteine (50g) e grassi (70g)==.
Questi sono assunti da cinque alimenti base: pane, latte, uova,
carne, dolci.
I nutrienti contenuti in 100g di ciascun alimento sono i seguenti:

|             | Pane | Latte | Uova | Carne | Dolci |
| ----------- | ---- | ----- | ---- | ----- | ----- |
| Carboidrati | 80   | 4     | 0    | 0     | 80    |
| Proteine    | 0    | 10    | 50   | 60    | 0     |
| Grassi      | 14   | 60    | 35   | 20    | 20    |
|             |      |       |      |       |       |
| Costo(euro) | 0.3  | 0.5   | 1.5  | 3     | 2     |
| Dose Max(g) | 100  | 120   | 50   | 300   | 100   |
Formulare un modello di Programmazione Lineare che permetta di decidere la dieta di costo minimo.
## Procedimento
Inseriamo le variabili che rappresenteranno la quantità in etti dei vari alimenti che dobbiamo produrre.
$$
x_{1},x_{2},x_{3},x_{4},x_{5}
$$
### Funzione Obiettivo 
Minimizzare il costo: 
$$ \text{min } 0.3x_{1} + 0.5x_{2} + 1.5x_{3} + 3x_{4} + 2x_{5} $$
### Vincoli 
1. **Carboidrati**: 
$$ 80x_{1} + 4x_{2} + 80x_{5} \geq 150 $$ 
2. **Proteine**: 
$$ 10x_{2} + 50x_{3} + 60x_{4} \geq 50 $$ 
3. **Grassi**: 
$$ 14x_{1} + 60x_{2} + 35x_{3} + 20x_{4} + 20x_{5} \geq 70 $$ 
4. **Dose Massima**: 
Nella tabella la dose massima viene riportata in grammi quindi dobbiamo convertirla. $100g \to 1hg$.
$$\begin{align}
x_{1}\leq 100 /100 \\
x_{2}\leq 120 /100 \\
x_{3}\leq 50 /100\\
x_{4}\leq 300 /100\\
x_{5}\leq 100 /100
\end{align}
$$ 
5. **Non negatività**: 
$$ 
x_{1}, x_{2}, x_{3}, x_{4}, x_{5} \geq 0 
$$


> [!info] Soluzione in python
> [[ricerca-operativa/02-Practice/esonero-1/main.py]]
