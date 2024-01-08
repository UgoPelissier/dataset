//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.704572, -4.065911, 0.000000, 31.574411, 8.223470, 0.100000};
//+
MeshSize {1} = 0.152152;
//+
MeshSize {2} = 0.152152;
//+
MeshSize {3} = 0.448551;
//+
MeshSize {4} = 0.448551;
//+
MeshSize {5} = 5.030779;
//+
MeshSize {6} = 5.030779;
//+
MeshSize {7} = 4.791078;
//+
MeshSize {8} = 4.791078;
//+
Cylinder(2) = {2.575604, -2.197386, 0.000000, 0.000000, 0.000000, 0.100000, 0.601001, 2*Pi};
//+
MeshSize {9} = 0.060100;
//+
MeshSize {10} = 0.060100;
//+
Cylinder(3) = {8.972705, 1.115797, 0.000000, 0.000000, 0.000000, 0.100000, 0.864832, 2*Pi};
//+
MeshSize {11} = 0.086483;
//+
MeshSize {12} = 0.086483;
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
Save "../msh/cad_004.msh2";
//+
Save "../mesh/cad_004.mesh";
//+
Save "../geo_unrolled/cad_004.geo_unrolled";
