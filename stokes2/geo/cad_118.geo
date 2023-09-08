//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.964026, -4.191196, 0.000000, 33.825793, 8.504043, 0.000000};
//+
l = [3.504869756669021, 1.0258163076531484, 1.0362344893744238, 3.504869756669021];
//+
MeshSize {1} = 3.504870;
//+
MeshSize {2} = 1.025816;
//+
MeshSize {3} = 1.036234;
//+
MeshSize {4} = 3.504870;
//+
Disk(2) = {23.869208, -0.082754, 0.000000, 1.409701, 1.409701};
//+
c0 = 0.14097008291152294;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
