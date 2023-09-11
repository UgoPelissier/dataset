//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.443131, -2.951886, 0.000000, 35.060122, 7.626471, 1.000000};
//+
l = [3.570744665652847, 3.570744665652847, 0.5523980848396167, 0.5523980848396167, 0.5523980848396167, 0.2634507312167042, 0.2634507312167042, 0.2634507312167042, 3.570744665652847, 3.570744665652847];
//+
MeshSize {1} = 3.570745;
//+
MeshSize {2} = 3.570745;
//+
MeshSize {3} = 0.552398;
//+
MeshSize {4} = 0.552398;
//+
MeshSize {5} = 0.552398;
//+
MeshSize {6} = 0.263451;
//+
MeshSize {7} = 0.263451;
//+
MeshSize {8} = 0.263451;
//+
Cylinder(2) = {32.889041, 2.659318, 0.000000, 0.000000, 0.000000, 1.000000, 0.666311, 2*Pi};
//+
c0 = 0.06663111106039141;
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
