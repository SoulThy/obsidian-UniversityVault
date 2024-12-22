import gurobipy as gb
import numpy as np

numI = 4
numJ = 3
numK = 3
numH = 2

PERC_STRATOCASTER = 0.3
PERC_TELECASTER = 0.2
PERC_SUPERSTRAT = 0.3
PERC_SINGLECUT = 0.2
PERC_PALERMO = 0.3
PERC_MILANO = 0.35

p = np.loadtxt("prezzi.txt")
t = np.loadtxt("con_min_u.txt")
dMT = np.loadtxt("disp_ore.txt")
c = np.loadtxt("con_mp_u.txt")
dMC = np.loadtxt("disp_mp.txt")
m = np.loadtxt("lim_inf.txt")
M = np.loadtxt("lim_sup.txt")


model = gb.Model()

x = np.empty((numI,numK), dtype = gb.Var)
for i in range(numI):
    for k in range(numK):
        x[i,k] = model.addVar(vtype = gb.GRB.CONTINUOUS, lb = 0, name = f"x{i+1}{k+1}")

#FUNZIONE OBIETTIVO
fo = gb.quicksum(x[i,k]*p[i] for i in range(numI) for k in range(numK))
model.setObjective(fo, gb.GRB.MAXIMIZE)

#VINCOLI
# vincolo disponibilita massima minuti stabilimenti
for j in range(numJ):
    for k in range(numK):
        model.addConstr(gb.quicksum(x[i,k]*t[i,j] for i in range(numI)) <= dMT[k,j] * 60)

# vincolo disponibilita massima materie prime
for h in range(numH):
    for k in range(numK):
        model.addConstr(gb.quicksum(x[i,k]*c[i,h] for i in range(numI)) <= dMC[k,h])

for i in range(numI):
    for k in range(numK):
        model.addConstr(x[i,k] >= m[i,k]) # vincoli limite inf
        model.addConstr(x[i,k] <= M[i,k]) # vincoli limite sup
        model.addConstr(x[i,k] >= 0) # vincoli non negativita

# vincoli percentuale
model.addConstr(gb.quicksum(x[2,k] for k in range(numK)) >= PERC_STRATOCASTER * gb.quicksum(x[i,k] for i in range(numI) for k in range(numK)))
model.addConstr(gb.quicksum(x[3,k] for k in range(numK)) >= PERC_TELECASTER * gb.quicksum(x[i,k] for i in range(numI) for k in range(numK)))
model.addConstr(gb.quicksum(x[0,k] for k in range(numK)) <= PERC_SUPERSTRAT * gb.quicksum(x[i,k] for i in range(numI) for k in range(numK)))
model.addConstr(gb.quicksum(x[1,k] for k in range(numK)) <= PERC_SINGLECUT * gb.quicksum(x[i,k] for i in range(numI) for k in range(numK)))
model.addConstr(gb.quicksum(x[i,2] for i in range(numI)) >= PERC_PALERMO * gb.quicksum(x[i,k] for i in range(numI) for k in range(numK)))
model.addConstr(gb.quicksum(x[i,1] for i in range(numI)) <= PERC_MILANO * gb.quicksum(x[i,k] for i in range(numI) for k in range(numK)))



model.optimize()
print("==========MODELLO==========")
model.write("model.lp")
print(open("model.lp").read())

print("======SOLUZIONE OTTIMA======")
print(f"valore ottimo: {model.ObjVal}")
for i in range(numI):
    for k in range(numK):
        print(f"{x[i,k].varName} = {x[i,k].X}")
