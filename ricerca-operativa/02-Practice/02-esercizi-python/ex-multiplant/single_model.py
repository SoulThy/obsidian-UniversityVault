import gurobipy as gp
import numpy as np

n = 4 # Numero di variabili
m = 5 # Numero di vincoli
kgPerProdotto = 4 # Per produrre un unita di P1/P2 servono 4kg di materiale
prezzi = np.loadtxt("prezzi_prodotti.txt")
oreDispMacchine = np.loadtxt("disponibilita_macchine_impianti.txt")
orePerProdotto = np.loadtxt("tempi_macchina_impianti.txt")
print(orePerProdotto)
modello = gp.Model()

x = np.empty((n), dtype = gp.Var)

for i in range(n):
    x[i] = modello.addVar(vtype = gp.GRB.CONTINUOUS, lb = 0, name=f"x{i+1}")

profittoImpianto1 = gp.quicksum(prezzi[i]*x[i] for i in range(2))
profittoImpianto2 = gp.quicksum(prezzi[i]*x[i+2] for i in range(2))
profittoTotale = profittoImpianto1 + profittoImpianto2
modello.setObjective(profittoTotale,gp.GRB.MAXIMIZE);

# vincolo sul materiale grezzo (possiamo utilizzare massimo 120kg)
modello.addConstr(gp.quicksum(kgPerProdotto*x[i] for i in range(n)) <= 120)

# vincoli sulle ore per la macchina di levigatura e pulitura per l'impianto 1
for i in range(2):
    qs = gp.quicksum((orePerProdotto[i,j]*x[j] for j in range(2)))
    modello.addConstr(qs <= oreDispMacchine[i,0])
# vincoli sulle ore per la macchina di levigatura e pulitura per l'impianto 2
for i in range(2):
    qs = gp.quicksum((orePerProdotto[i,j+2]*x[j+2] for j in range(2)))
    modello.addConstr(qs <= oreDispMacchine[i,1])

modello.optimize()
print("==========MODELLO==========")
print(modello.display())

print("======SOLUZIONE OTTIMA======")
for var in x:
    print(f"{var.VarName}={var.X}")
