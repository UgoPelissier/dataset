//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.521300, -3.220106, 0.000000, 32.224675, 7.693708, 1.000000};
//+
MeshSize {1} = 0.844339;
//+
MeshSize {2} = 0.844339;
//+
MeshSize {3} = 1.114732;
//+
MeshSize {4} = 1.114732;
//+
MeshSize {5} = 1.313024;
//+
MeshSize {6} = 1.313024;
//+
MeshSize {7} = 1.073010;
//+
MeshSize {8} = 1.073010;
//+
Cylinder(2) = {9.356447, -1.756357, 0.000000, 0.000000, 0.000000, 0.100000, 0.819710, 2*Pi};
//+
MeshSize {9} = 0.081971;
//+
MeshSize {10} = 0.081971;
//+
Cylinder(3) = {22.724063, 1.588129, 0.000000, 0.000000, 0.000000, 0.100000, 0.564229, 2*Pi};
//+
MeshSize {11} = 0.056423;
//+
MeshSize {12} = 0.056423;
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
Save "../msh/cad_031.msh2";
//+
Save "../mesh/cad_031.mesh";
//+
Save "../geo_unrolled/cad_031.geo_unrolled";
