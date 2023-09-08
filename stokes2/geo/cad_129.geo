//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.746112, -3.960987, 0.000000, 33.452213, 8.352240, 0.000000};
//+
l = [1.1974708368912814, 3.445236431081067, 3.445236431081067, 1.0900194823836862];
//+
MeshSize {1} = 1.197471;
//+
MeshSize {2} = 3.445236;
//+
MeshSize {3} = 3.445236;
//+
MeshSize {4} = 1.090019;
//+
Disk(2) = {12.655196, 1.850823, 0.000000, 1.276836, 1.276836};
//+
c0 = 0.1276835619966741;
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
