//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.743308, -4.072517, 0.000000, 33.123140, 9.934309, 1.000000};
//+
MeshSize {1} = 1.513926;
//+
MeshSize {2} = 1.513926;
//+
MeshSize {3} = 1.568171;
//+
MeshSize {4} = 1.568171;
//+
MeshSize {5} = 1.611111;
//+
MeshSize {6} = 1.611111;
//+
MeshSize {7} = 1.662437;
//+
MeshSize {8} = 1.662437;
//+
Cylinder(2) = {16.804641, -0.024603, 0.000000, 0.000000, 0.000000, 1.000000, 1.424310, 2*Pi};
//+
MeshSize {9} = 0.142431;
//+
MeshSize {10} = 0.142431;
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
