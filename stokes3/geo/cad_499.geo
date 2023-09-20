//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.195407, -4.531208, 0.000000, 38.889595, 9.463160, 1.000000};
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
Cylinder(2) = {13.349558, 1.588487, 0.000000, 0.000000, 0.000000, 1.000000, 1.194782, 2*Pi};
//+
MeshSize {9} = 0.119478;
//+
MeshSize {10} = 0.119478;
//+
Cylinder(3) = {24.385915, -2.469704, 0.000000, 0.000000, 0.000000, 1.000000, 1.234586, 2*Pi};
//+
MeshSize {11} = 0.123459;
//+
MeshSize {12} = 0.123459;
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
Save "../geo_unrolled/cad_499.geo_unrolled";
