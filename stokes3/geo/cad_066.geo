//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.378989, -3.948600, 0.000000, 38.130539, 7.954600, 1.000000};
//+
MeshSize {1} = 0.918924;
//+
MeshSize {2} = 0.918924;
//+
MeshSize {3} = 0.711943;
//+
MeshSize {4} = 0.711943;
//+
MeshSize {5} = 3.871437;
//+
MeshSize {6} = 3.871437;
//+
MeshSize {7} = 3.871437;
//+
MeshSize {8} = 3.871437;
//+
Cylinder(2) = {8.168635, 2.369137, 0.000000, 0.000000, 0.000000, 1.000000, 0.840339, 2*Pi};
//+
MeshSize {9} = 0.084034;
//+
MeshSize {10} = 0.084034;
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
