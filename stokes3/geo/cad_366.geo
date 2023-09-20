//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.755484, -4.132437, 0.000000, 30.920520, 8.496862, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {9.546106, 2.091507, 0.000000, 0.000000, 0.000000, 1.000000, 1.252428, 2*Pi};
//+
MeshSize {9} = 0.125243;
//+
MeshSize {10} = 0.125243;
//+
Cylinder(3) = {16.868132, -1.021316, 0.000000, 0.000000, 0.000000, 1.000000, 1.205608, 2*Pi};
//+
MeshSize {11} = 0.120561;
//+
MeshSize {12} = 0.120561;
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
Save "../geo_unrolled/cad_366.geo_unrolled";
