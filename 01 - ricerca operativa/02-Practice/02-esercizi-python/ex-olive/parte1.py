import gurobipy as gb
import numpy as np

n = 6 # numero di tipi di olive
numReparti = 3 # numero di reparti (A,B,C)

# i prezzi, quantita minime e massime e la resa sono per 100 kg di olive
p = np.loadtxt("dati-olive.txt", usecols = 0)
m = np.loadtxt("dati-olive.txt", usecols = 1)
M = np.loadtxt("dati-olive.txt", usecols = 2)
r = np.loadtxt("dati-olive.txt", usecols = 3)
a = np.loadtxt("dati-olive.txt", usecols = 4)
h = np.loadtxt("tempi-lavorazione-reparti.txt")
hM = [70,55,55]

modello = gb.Model()

x = np.empty((n), dtype = gb.Var)
for i in range(n):
    x[i] = modello.addVar(vtype = gb.GRB.CONTINUOUS, lb = 0, name=f"x{i+1}")

fObjective = gb.quicksum(p[i]*x[i] for i in range (n))
modello.setObjective(fObjective,gb.GRB.MINIMIZE)

# vincolo quantita min e massima di olive
for i in range(n):
    modello.addConstr(x[i]>=m[i])
    modello.addConstr(x[i]<=M[i])

# vincolo sui litri da produrre
modello.addConstr(gb.quicksum(r[i]*x[i] for i in range(n))==1200)

# vincolo sulle ore massime di lavorazione per reparto
for j in range(numReparti):
    modello.addConstr(gb.quicksum(x[i]*h[i][j] for i in range(n)) <= hM[j])

# vincolo sull'acidita nel totale dei litri prodotti
lhsVincoloAcidita = gb.quicksum(a[i]*r[i]*x[i] for i in range(n)) 
rhsVincoloAcidita = 0.7*(gb.quicksum(r[i]*x[i] for i in range(n)))
modello.addConstr(lhsVincoloAcidita <= rhsVincoloAcidita)

modello.optimize()
print("=====MODELLO=====")
print(modello.display())
print("===SOLUZIONI===")
for var in x:
    print(f"{var.VarName}={var.X}")
print("===RISULTATO FUNZIONE OBIETTIVO===")
print(f"{round(modello.ObjVal,2)}€")
