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

n = 5
m = 3

nt = np.loadtxt("tabella1.txt")
c = np.loadtxt("tabella2.txt")[0]
dM = np.loadtxt("tabella2.txt")[1]
nomi = ["pane", "latte", "uova", "carne", "dolci"]
fm = [150, 50, 70]

model = gb.Model()
x = np.empty((n), dtype = gb.Var)

for j in range(n):
    x[j] = model.addVar(vtype = gb.GRB.CONTINUOUS, lb = 0, name = f"{nomi[j]}")

fo = gb.quicksum(c[j]*x[j]/100 for j in range(n))
model.setObjective(fo, gb.GRB.MINIMIZE)

# fabbisogni minimi
for i in range(m):
    model.addConstr(gb.quicksum(x[j]*nt[i,j]/100 for j in range(n)) >= fm[i])

# dose massima
for j in range(n):
    model.addConstr(x[j] <= dM[j])

model.optimize()
print("==========MODELLO==========")
model.write("model.lp")
print(open("model.lp").read())

print("======SOLUZIONE OTTIMA======")
print(f"spesa minima: {model.ObjVal}")

for j in range(n):
    print(f"{x[j].varName} = {x[j].X}")
