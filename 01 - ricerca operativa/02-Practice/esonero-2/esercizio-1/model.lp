\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  7 x11 + 5 x12 + 6 x13 + 2 x14 + 9 x15 + 3 x21 + 5 x22 + 7 x23 + 9 x24
   + 2 x25 + 2 x31 + 3 x32 + 6 x33 + 9 x34 + 7 x35 + 13000 delta1
   + 14000 delta2 + 11500 delta3 + 40 psi11 + 59 psi12 + 84 psi13
   + 54 psi14 + 71 psi15 + 52 psi21 + 54 psi22 + 45 psi23 + 76 psi24
   + 62 psi25 + 63 psi31 + 48 psi32 + 84 psi33 + 38 psi34 + 57 psi35
Subject To
 R0: x11 + x12 + x13 + x14 + x15 - 100 delta1 <= 0
 R1: x21 + x22 + x23 + x24 + x25 - 80 delta2 <= 0
 R2: x31 + x32 + x33 + x34 + x35 - 90 delta3 <= 0
 R3: x11 - 30 psi11 <= 0
 R4: x12 - 33 psi12 <= 0
 R5: x13 - 25 psi13 <= 0
 R6: x14 - 18 psi14 <= 0
 R7: x15 - 40 psi15 <= 0
 R8: x21 - 30 psi21 <= 0
 R9: x22 - 33 psi22 <= 0
 R10: x23 - 25 psi23 <= 0
 R11: x24 - 18 psi24 <= 0
 R12: x25 - 40 psi25 <= 0
 R13: x31 - 30 psi31 <= 0
 R14: x32 - 33 psi32 <= 0
 R15: x33 - 25 psi33 <= 0
 R16: x34 - 18 psi34 <= 0
 R17: x35 - 40 psi35 <= 0
 R18: x11 + x21 + x31 = 30
 R19: x12 + x22 + x32 = 33
 R20: x13 + x23 + x33 = 25
 R21: x14 + x24 + x34 = 18
 R22: x15 + x25 + x35 = 40
 R23: psi11 + psi12 + psi13 + psi14 + psi15 + psi21 + psi22 + psi23 + psi24
   + psi25 + psi31 + psi32 + psi33 + psi34 + psi35 <= 10
 R24: delta1 + delta3 <= 1
 R25: - 0.2 x11 - 0.2 x12 + 0.8 x13 - 0.2 x14 - 0.2 x15 + x23 + x33 + 25 y
   >= 0
 R26: x14 + x24 - 0.6 x31 - 0.6 x32 - 0.6 x33 + 0.4 x34 - 0.6 x35 + 18 y
   <= 18
 R27: x11 >= 0
 R28: x12 >= 0
 R29: x13 >= 0
 R30: x14 >= 0
 R31: x15 >= 0
 R32: x21 >= 0
 R33: x22 >= 0
 R34: x23 >= 0
 R35: x24 >= 0
 R36: x25 >= 0
 R37: x31 >= 0
 R38: x32 >= 0
 R39: x33 >= 0
 R40: x34 >= 0
 R41: x35 >= 0
Bounds
Binaries
 delta1 delta2 delta3 psi11 psi12 psi13 psi14 psi15 psi21 psi22 psi23 psi24
 psi25 psi31 psi32 psi33 psi34 psi35 y
Generals
 x11 x12 x13 x14 x15 x21 x22 x23 x24 x25 x31 x32 x33 x34 x35
End
