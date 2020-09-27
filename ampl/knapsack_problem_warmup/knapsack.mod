# Warmup problem
# Please use variable names that are descriptive. Do not use letters A, B etc.


set XVARS := {'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9'};

# Define params. A1, A2, A3, A4 represent rows of the matrix 9. Each row is a student number + 10
param A1 {XVARS} > 9;
param A2 {XVARS} > 9;
param A3 {XVARS} > 9;
param A4 {XVARS} > 9;

# Define the value of pii to be each digit of pi + 10
param pii {XVARS} > 9;

# This are optimization variables
var X {XVARS} binary;

# Objective function
maximize Knapsack_Value: sum {j in XVARS} pii[j] * X[j];

# 4 constrains for each stundet
subject to Knapsack_Weight_Constraint_A1: sum {j in XVARS} A1[j] * X[j] <= 0.5 * sum {j in XVARS} A1[j];
subject to Knapsack_Weight_Constraint_A2: sum {j in XVARS} A2[j] * X[j] <= 0.5 * sum {j in XVARS} A2[j];
subject to Knapsack_Weight_Constraint_A3: sum {j in XVARS} A3[j] * X[j] <= 0.5 * sum {j in XVARS} A3[j];
subject to Knapsack_Weight_Constraint_A4: sum {j in XVARS} A4[j] * X[j] <= 0.5 * sum {j in XVARS} A4[j];

