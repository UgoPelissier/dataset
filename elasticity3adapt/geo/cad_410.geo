//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.532096, -3.341346, 0.000000, 37.030972, 7.784917, 0.100000};
//+
MeshSize {1} = 3.894886;
//+
MeshSize {2} = 3.894886;
//+
MeshSize {3} = 2.995626;
//+
MeshSize {4} = 2.995626;
//+
MeshSize {5} = 0.423267;
//+
MeshSize {6} = 0.423267;
//+
MeshSize {7} = 0.561812;
//+
MeshSize {8} = 0.561812;
//+
Cylinder(2) = {34.686103, -0.159449, 0.000000, 0.000000, 0.000000, 0.100000, 0.811573, 2*Pi};
//+
MeshSize {9} = 0.081157;
//+
MeshSize {10} = 0.081157;
//+
Cylinder(3) = {13.619187, 2.468120, 0.000000, 0.000000, 0.000000, 0.100000, 1.389726, 2*Pi};
//+
MeshSize {11} = 0.138973;
//+
MeshSize {12} = 0.138973;
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
Save "../msh/cad_410.msh2";
//+
Save "../mesh/cad_410.mesh";
//+
Save "../geo_unrolled/cad_410.geo_unrolled";
