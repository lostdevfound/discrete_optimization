#Alborz Namazi Math 708

set	I = {1..9};
set J = {1..4};																	#defining the index 
param SN {I,J};																	#defining sudent number's digit as a parameter vector
param PI {I};																	#defining pi as a parameter vector
param PNa {I};																	#answer to personal knapsack part a
param PNb {I};																	#answer to personal knapsack part b
param PNc {I};																	#answer to personal knapsack part c
param D = 10;																	#defining the constant to be added
param A {i in I, j in J} = SN[i,j] + D;											#adding the constant to SN
param B {i in I} = PI[i] + D;													#adding the constant to pi

/*
#question 1 part a and question 2 part a
param LSa = sum {i in I, j in J} A[i,j] * PNa[i];								#calculating the left-hand-side of the constraint
param RSa = 0.5 * sum {i in I, j in J} A[i,j];									#calculating the right-hand-side of the constraint

param LSb = sum {i in I, j in J} A[i,j] * PNb[i];								#calculating the left-hand-side of the constraint
param RSb = 0.5 * sum {i in I, j in J} A[i,j];									#calculating the right-hand-side of the constraint

param LSc = sum {i in I, j in J} A[i,j] * PNc[i];								#calculating the left-hand-side of the constraint
param RSc = 0.5 * sum {i in I, j in J} A[i,j];									#calculating the right-hand-side of the constraint


#question 1 part c
var X {I} >= 0 binary;															#decision variables, defined as binary 
maximize z: sum {i in I} B[i] * X[i];											#objectie function, maximizing
s.t. C1: sum {i in I, j in J} A[i,j] * X[i] <= 0.5 * sum {i in I, j in J} A[i,j];#constraints
*/


#question 2 part c
var X {I} >= 0, <= 1;															#decision variables, non-binary [0,1] 
maximize z: sum {i in I} B[i] * X[i];											#objectie function, maximizing
s.t. C1: sum {i in I, j in J} A[i,j] * X[i] <= 0.5 * sum {i in I, j in J} A[i,j];#constraints
