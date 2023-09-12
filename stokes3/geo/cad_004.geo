//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.704572, -4.065911, 0.000000, 31.574411, 8.223470, 1.000000};
//+
MeshSize {1} = 0.204326;
//+
MeshSize {2} = 0.204326;
//+
MeshSize {3} = 3.253981;
//+
MeshSize {4} = 3.253981;
//+
MeshSize {5} = 0.204326;
//+
MeshSize {6} = 0.204326;
//+
MeshSize {7} = 3.253981;
//+
MeshSize {8} = 3.253981;
//+
Cylinder(2) = {2.575604, -2.197386, 0.000000, 0.000000, 0.000000, 1.000000, 0.601001, 2*Pi};
//+
MeshSize {9} = 0.060100;
//+
MeshSize {10} = 0.060100;
//+
Cylinder(3) = {8.972705, 1.115797, 0.000000, 0.000000, 0.000000, 1.000000, 0.864832, 2*Pi};
//+
MeshSize {11} = 0.086483;
//+
MeshSize {12} = 0.086483;
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
//+
Save "../geo_unrolled/cad_004.geo_unrolled";
