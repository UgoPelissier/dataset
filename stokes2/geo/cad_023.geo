//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.443131, -2.951886, 0.000000, 35.060122, 7.626471, 0.000000};
//+
l = [3.570744665652847, 0.5523980848396167, 0.2634507312167042, 3.570744665652847];
//+
MeshSize {1} = 3.570745;
//+
MeshSize {2} = 0.552398;
//+
MeshSize {3} = 0.263451;
//+
MeshSize {4} = 3.570745;
//+
Disk(2) = {32.889041, 2.659318, 0.000000, 0.666311, 0.666311};
//+
c0 = 0.06663111106039141;
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
