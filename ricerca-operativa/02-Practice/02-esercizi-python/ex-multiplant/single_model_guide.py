import gurobipy as gp
from gurobipy import GRB
import numpy as np

tempi_macchine = np.loadtxt("tempi_macchina_impianti.txt")

disp_mac_imp = np.loadtxt("disponibilita_macchine_impianti.txt")

modello = gp.Model()

# dimensione del problema (numero di variabili)
n = 4

# numero di vincolii
m = 5

# variabili
x = np.empty((n), dtype = gp.Var)
for i in range(n):
    # lb = 0 equivale a x >= 0
    x[i] = modello.addVar(vtype = GRB.CONTINUOUS, lb = 0, name = f"x-{i+1}")

prezzi = np.array([10, 15])

profitto_imp1 = gp.quicksum([prezzi[i] * x[i] for i in range(int(n/2))])
modello.update()
print(profitto_imp1)

profitto_imp2 = gp.quicksum([prezzi[i] * x[i+int(n/2)] for i in range(int(n/2))])
# modello.update()
print(profitto_imp2)

fo = profitto_imp1 + profitto_imp2
print(fo)

# vincolo materiale grezzo
c = modello.addConstr(4 * gp.quicksum(x) <= 120)

# vincoli macchinari impianto 1
for i in range(2):
    modello.addConstr(gp.quicksum([tempi_macchine[i,j] * x[j] for j in range(int(n/2))]) <= disp_mac_imp[i,0])

# vincoli macchinari impianto 2
for i in range(2):
    modello.addConstr(gp.quicksum([tempi_macchine[i,j+int(n/2)] * x[j+int(n/2)] for j in range(int(n/2))]) <= disp_mac_imp[i,1])

modello.setObjective(fo, GRB.MAXIMIZE)

modello.write("modello_multiplant.lp")

modello.optimize()

x_vals = [x[i].X for i in range(n)]
for el in x_vals:
    print(el)