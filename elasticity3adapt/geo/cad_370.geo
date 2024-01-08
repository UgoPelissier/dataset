//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.856441, -4.744964, 0.000000, 35.707505, 9.749743, 0.100000};
//+
MeshSize {1} = 4.751390;
//+
MeshSize {2} = 4.751390;
//+
MeshSize {3} = 5.365812;
//+
MeshSize {4} = 5.365812;
//+
MeshSize {5} = 0.361871;
//+
MeshSize {6} = 0.361871;
//+
MeshSize {7} = 0.206277;
//+
MeshSize {8} = 0.206277;
//+
Cylinder(2) = {25.435842, -2.404913, 0.000000, 0.000000, 0.000000, 0.100000, 0.966956, 2*Pi};
//+
MeshSize {9} = 0.096696;
//+
MeshSize {10} = 0.096696;
//+
Cylinder(3) = {34.230511, 1.353074, 0.000000, 0.000000, 0.000000, 0.100000, 1.422695, 2*Pi};
//+
MeshSize {11} = 0.142270;
//+
MeshSize {12} = 0.142270;
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
Save "../msh/cad_370.msh2";
//+
Save "../mesh/cad_370.mesh";
//+
Save "../geo_unrolled/cad_370.geo_unrolled";
