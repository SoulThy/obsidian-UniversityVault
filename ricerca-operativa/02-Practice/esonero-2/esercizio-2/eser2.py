'''
    np.loadtxt("nomefile.txt", usecols = ?)
    model = gb.Model() -- creazione modello 
    x = np.empty((n), dtype = gb.Var) -- creazione array di 'n' variabili
    x[*] = model.addVar(vtype = gb.GRB.CONTINUOUS, lb = 0, name = f"x{*+1}") -- aggiunta nel modello delle variabili
    model.setObjective(fObj, gb.GRB.MAXIMIZE oppure gb.GRB.MINIMIZE) -- asseggnazione funzione obiettivo
    model.addConstr(leftside <= / == / >= rightside) -- aggiunta del vincolo
    gb.quicksum(x[i] for i in range(n)) -- sommatoria su tutte le 'n' variabili
'''
import gurobipy as gb
import numpy as np

numJ = 6

pt = np.array([3,2,4,2,3,1])
pr = np.array([5,3,6,4,4,2])
pM = 20

modello = gb.Model()

x = np.empty(numJ, dtype = gb.Var)

for j in range(numJ):
    x[j] = modello.addVar(vtype = gb.GRB.BINARY, name=f'x{j+1}')

# FUNZIONE OBIETTIVO
fo = gb.quicksum(x[j]*pt[j] for j in range(numJ))
modello.setObjective(fo, gb.GRB.MAXIMIZE)

# VINCOLI
modello.addConstr(gb.quicksum(x[j]*pr[j] for j in range(numJ)) <= pM)
modello.addConstr(x[2] <= x[3])
modello.addConstr(x[4] <= (1-x[2]))

modello.optimize()
print("==========MODELLO==========")
modello.write("model.lp")
print(open("model.lp").read())

print("======SOLUZIONE OTTIMA======")
print(f"punteggio max: {modello.ObjVal}")

for j in range(numJ):
    print(f"{x[j].varName} = {x[j].X}")
