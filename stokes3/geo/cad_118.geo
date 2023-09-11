//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.964026, -4.191196, 0.000000, 33.825793, 8.504043, 1.000000};
//+
l = [3.504869756669021, 3.504869756669021, 1.0258163076531484, 1.0258163076531484, 1.0258163076531484, 1.0362344893744238, 1.0362344893744238, 1.0362344893744238, 3.504869756669021, 3.504869756669021];
//+
MeshSize {1} = 3.504870;
//+
MeshSize {2} = 3.504870;
//+
MeshSize {3} = 1.025816;
//+
MeshSize {4} = 1.025816;
//+
MeshSize {5} = 1.025816;
//+
MeshSize {6} = 1.036234;
//+
MeshSize {7} = 1.036234;
//+
MeshSize {8} = 1.036234;
//+
Cylinder(2) = {23.869208, -0.082754, 0.000000, 0.000000, 0.000000, 1.000000, 1.409701, 2*Pi};
//+
c0 = 0.14097008291152294;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
