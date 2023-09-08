//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.125170, -4.075392, 0.000000, 35.209610, 8.756433, 0.000000};
//+
l = [3.560499231570791, 1.2366981809211213, 1.1262855143258175, 3.560499231570791];
//+
MeshSize {1} = 3.560499;
//+
MeshSize {2} = 1.236698;
//+
MeshSize {3} = 1.126286;
//+
MeshSize {4} = 3.560499;
//+
Disk(2) = {23.276181, 1.931956, 0.000000, 1.105139, 1.105139};
//+
c0 = 0.11051389078618555;
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
