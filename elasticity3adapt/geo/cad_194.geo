//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.028207, -3.753947, 0.000000, 39.447381, 8.909016, 0.100000};
//+
MeshSize {1} = 1.765804;
//+
MeshSize {2} = 1.765804;
//+
MeshSize {3} = 2.029558;
//+
MeshSize {4} = 2.029558;
//+
MeshSize {5} = 0.691445;
//+
MeshSize {6} = 0.691445;
//+
MeshSize {7} = 0.833770;
//+
MeshSize {8} = 0.833770;
//+
Cylinder(2) = {34.802718, -0.069252, 0.000000, 0.000000, 0.000000, 0.100000, 0.809053, 2*Pi};
//+
MeshSize {9} = 0.080905;
//+
MeshSize {10} = 0.080905;
//+
Cylinder(3) = {8.637611, 0.235630, 0.000000, 0.000000, 0.000000, 0.100000, 0.500683, 2*Pi};
//+
MeshSize {11} = 0.050068;
//+
MeshSize {12} = 0.050068;
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
Save "../msh/cad_194.msh2";
//+
Save "../mesh/cad_194.mesh";
//+
Save "../geo_unrolled/cad_194.geo_unrolled";
