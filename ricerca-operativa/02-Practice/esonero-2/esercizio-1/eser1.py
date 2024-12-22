import gurobipy as gb
import numpy as np

PERC_LATINA = 0.2
PERC_TERRACINA = 0.6
numI = 3
numJ = 5

MC = 10
c = np.array([13000,14000,11500])
C = np.array([100,80,90])
d = np.array([30,33,25,18,40])
cc = np.array([[40,59,84,54,71],
               [52,54,45,76,62],
               [63,48,84,38,57]])
p = np.array([[7,5,6,2,9],
              [3,5,7,9,2],
              [2,3,6,9,7]])

modello = gb.Model()

x = np.empty((numI,numJ), dtype = gb.Var)
for i in range(numI):
    for j in range(numJ):
        x[i,j] = modello.addVar(vtype = gb.GRB.INTEGER, lb = 0, name = f'x{i+1}{j+1}')


delta = np.empty(numI, dtype = gb.Var)
for i in range(numI):
    delta[i] = modello.addVar(vtype = gb.GRB.BINARY, name = f'delta{i+1}')

psi = np.empty((numI,numJ), dtype = gb.Var)
for i in range(numI):
    for j in range(numJ):
        psi[i,j] = modello.addVar(vtype = gb.GRB.BINARY, name = f'psi{i+1}{j+1}')

y = modello.addVar(vtype = gb.GRB.BINARY, name = f'y')

# FUNZIONE OBIETTIVO
sum1 = gb.quicksum(delta[i]*c[i] for i in range(numI))
sum2 = gb.quicksum(x[i][j]*p[i][j] + psi[i][j]*cc[i][j] for i in range(numI) for j in range(numJ))
fo = sum1 + sum2
modello.setObjective(fo, gb.GRB.MINIMIZE)

# VINCOLI 

for i in range(numI):
    modello.addConstr(gb.quicksum(x[i,j] for j in range(numJ)) <= C[i]*delta[i])

for i in range(numI):
    for j in range(numJ):
        modello.addConstr(x[i,j] <= d[j]*psi[i,j])

for j in range(numJ):
    modello.addConstr(gb.quicksum(x[i,j] for i in range(numI)) == d[j])

modello.addConstr(gb.quicksum(psi[i,j] for i in range(numI) for j in range(numJ)) <= MC)

modello.addConstr(delta[0] <= (1-delta[2]))

modello.addConstr((gb.quicksum(x[i,2] for i in range(numI))) >= (PERC_LATINA * gb.quicksum(x[0,j] for j in range(numJ))) - (d[2]*y))
modello.addConstr((gb.quicksum(x[i,3] for i in range(numI))) <= (PERC_TERRACINA * gb.quicksum(x[2,j] for j in range(numJ))) + (d[3]*(1-y)))

for i in range(numI):
    for j in range(numJ):
        modello.addConstr(x[i,j] >= 0)


modello.optimize()
print("==========MODELLO==========")
modello.write("model.lp")
print(open("model.lp").read())

print("======SOLUZIONE OTTIMA======")
print(f"costo minimo: {modello.ObjVal} euro")

print(f"{y.varName} = {y.X}")
for i in range(numI):
    print(f"{delta[i].varName} = {delta[i].X}")
    for j in range(numJ):
        print(f"\t{x[i,j].varName} = {x[i,j].X}")
        print(f"\t{psi[i,j].varName} = {psi[i,j].X}")
