# einar gabbassov 301299069
set VARS := {'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9'};

param a {VARS} > 9;
param b {VARS} > 9;

var X {VARS} integer >= 0, <= 1;

maximize Knapsack_Value: sum {j in VARS} b[j] * X[j];

subject to Knapsack_Weight_Constraint: sum {j in VARS} a[j] * X[j] <= 0.5 * sum {j in VARS} a[j];

