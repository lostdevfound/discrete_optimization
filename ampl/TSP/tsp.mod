# num verts
param n > 0, integer;

set V := 1..n;

# cost matrix
param c{V,V} >= 0;


var x{V,V} binary;


minimize rout_cost : sum{i in V, j in V : i != j} c[i,j]*x[i,j];

# degree constraints
subject to out_degree {i in V} : sum{j in V : i != j} x[i,j] = 1;

subject to in_degree {j in V} : sum{i in V : i != j} x[i,j] = 1;

subject to two_vert {i in V, j in V}: x[i,j]+x[j,i] <= 1;
