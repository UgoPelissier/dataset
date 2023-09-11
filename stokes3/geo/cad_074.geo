//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.074082, -3.307051, 0.000000, 30.462009, 7.872994, 1.000000};
//+
MeshSize {1} = 0.534303;
//+
MeshSize {2} = 0.534303;
//+
MeshSize {3} = 0.534303;
//+
MeshSize {4} = 3.078878;
//+
MeshSize {5} = 3.078878;
//+
MeshSize {6} = 3.078878;
//+
MeshSize {7} = 3.078878;
//+
MeshSize {8} = 0.322066;
//+
Cylinder(2) = {3.617048, 2.081962, 0.000000, 0.000000, 0.000000, 1.000000, 1.106318, 2*Pi};
//+
MeshSize {9} = 0.110632;
//+
MeshSize {10} = 0.110632;
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
