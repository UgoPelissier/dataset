//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.416028, -4.007241, 0.000000, 37.606620, 9.195983, 1.000000};
//+
MeshSize {1} = 0.623764;
//+
MeshSize {2} = 0.623764;
//+
MeshSize {3} = 0.623764;
//+
MeshSize {4} = 0.447650;
//+
MeshSize {5} = 0.447650;
//+
MeshSize {6} = 0.447650;
//+
MeshSize {7} = 3.829965;
//+
MeshSize {8} = 3.829965;
//+
Cylinder(2) = {6.892006, -1.105810, 0.000000, 0.000000, 0.000000, 1.000000, 0.858599, 2*Pi};
//+
MeshSize {9} = 0.085860;
//+
MeshSize {10} = 0.085860;
//+
Cylinder(3) = {4.294182, -0.815828, 0.000000, 0.000000, 0.000000, 1.000000, 0.545972, 2*Pi};
//+
MeshSize {11} = 0.054597;
//+
MeshSize {12} = 0.054597;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
