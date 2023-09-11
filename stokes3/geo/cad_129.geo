//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.746112, -3.960987, 0.000000, 33.452213, 8.352240, 1.000000};
//+
l = [1.1974708368912814, 1.1974708368912814, 1.1974708368912814, 3.445236431081067, 3.445236431081067, 3.445236431081067, 3.445236431081067, 1.0900194823836862, 1.0900194823836862, 1.0900194823836862];
//+
MeshSize {1} = 1.197471;
//+
MeshSize {2} = 1.197471;
//+
MeshSize {3} = 1.197471;
//+
MeshSize {4} = 3.445236;
//+
MeshSize {5} = 3.445236;
//+
MeshSize {6} = 3.445236;
//+
MeshSize {7} = 3.445236;
//+
MeshSize {8} = 1.090019;
//+
Cylinder(2) = {12.655196, 1.850823, 0.000000, 0.000000, 0.000000, 1.000000, 1.276836, 2*Pi};
//+
c0 = 0.1276835619966741;
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
