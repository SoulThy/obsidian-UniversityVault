import gurobipy as gp
import numpy as np

c = np.loadtxt("costi.txt")
a = np.loadtxt("produzione.txt")
b = np.loadtxt("domanda.txt")

modello = gp.Model()

m = len(a) # Numero di miniere
n = len(b) # Numero di impianti di produzione

x = np.empty((m,n), dtype = gp.Var) # matrice 2 righe e 3 colonne

for i in range(m):
    for j in range(n):
        x[i,j] = modello.addVar(vtype = gp.GRB.CONTINUOUS, lb = 0, name=f"x{i+1}{j+1}")

# FUNZIONE OBIETTIVO
fo = gp.quicksum(c[i,j]*x[i,j] for i in range(m) for j in range(n))
modello.setObjective(fo, gp.GRB.MINIMIZE)

# VINCOLI
for i in range(m):
    modello.addConstr(gp.quicksum([x[i,j] for j in range(n)]) == a[i])

for j in range(n):
    modello.addConstr(gp.quicksum([x[i,j] for i in range(m)]) == b[j])

modello.optimize()

print("==========MODELLO==========")
print(modello.display())

print("======SOLUZIONE OTTIMA======")
print(f"valore ottimo: {modello.ObjVal}")

for i in range(m):
    for j in range(n):
        print(f"{x[i,j].varName} = {x[i,j].X}")
