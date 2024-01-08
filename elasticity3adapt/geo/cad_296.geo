//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.472826, -3.472387, 0.000000, 32.648268, 8.307658, 0.100000};
//+
MeshSize {1} = 0.681883;
//+
MeshSize {2} = 0.681883;
//+
MeshSize {3} = 0.403861;
//+
MeshSize {4} = 0.403861;
//+
MeshSize {5} = 2.753186;
//+
MeshSize {6} = 2.753186;
//+
MeshSize {7} = 3.461423;
//+
MeshSize {8} = 3.461423;
//+
Cylinder(2) = {3.962925, 2.402108, 0.000000, 0.000000, 0.000000, 0.100000, 0.508930, 2*Pi};
//+
MeshSize {9} = 0.050893;
//+
MeshSize {10} = 0.050893;
//+
Cylinder(3) = {19.747203, -1.068376, 0.000000, 0.000000, 0.000000, 0.100000, 0.589480, 2*Pi};
//+
MeshSize {11} = 0.058948;
//+
MeshSize {12} = 0.058948;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_296.msh2";
//+
Save "../mesh/cad_296.mesh";
//+
Save "../geo_unrolled/cad_296.geo_unrolled";
