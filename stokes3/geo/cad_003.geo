//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.957213, -3.534301, 0.000000, 29.970245, 7.741791, 1.000000};
//+
MeshSize {1} = 3.116876;
//+
MeshSize {2} = 3.116876;
//+
MeshSize {3} = 3.116876;
//+
MeshSize {4} = 3.116876;
//+
MeshSize {5} = 0.510059;
//+
MeshSize {6} = 0.510059;
//+
MeshSize {7} = 0.450981;
//+
MeshSize {8} = 0.450981;
//+
Cylinder(2) = {26.210847, 0.803025, 0.000000, 0.000000, 0.000000, 1.000000, 1.307128, 2*Pi};
//+
MeshSize {9} = 0.130713;
//+
MeshSize {10} = 0.130713;
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
