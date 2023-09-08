//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.049044, -4.273788, 0.000000, 34.918229, 9.760388, 0.000000};
//+
l = [1.1176123542422445, 3.53061816997908, 3.53061816997908, 0.917750213635766];
//+
MeshSize {1} = 1.117612;
//+
MeshSize {2} = 3.530618;
//+
MeshSize {3} = 3.530618;
//+
MeshSize {4} = 0.917750;
//+
Disk(2) = {10.007429, 2.916991, 0.000000, 1.107065, 1.107065};
//+
c0 = 0.1107064998164266;
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
