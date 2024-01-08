//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.703300, -3.971666, 0.000000, 34.678015, 9.468263, 0.100000};
//+
MeshSize {1} = 2.585299;
//+
MeshSize {2} = 2.585299;
//+
MeshSize {3} = 1.696077;
//+
MeshSize {4} = 1.696077;
//+
MeshSize {5} = 0.776990;
//+
MeshSize {6} = 0.776990;
//+
MeshSize {7} = 0.657973;
//+
MeshSize {8} = 0.657973;
//+
Cylinder(2) = {29.440221, 1.624878, 0.000000, 0.000000, 0.000000, 0.100000, 1.172246, 2*Pi};
//+
MeshSize {9} = 0.117225;
//+
MeshSize {10} = 0.117225;
//+
Cylinder(3) = {12.489418, 2.961495, 0.000000, 0.000000, 0.000000, 0.100000, 1.327467, 2*Pi};
//+
MeshSize {11} = 0.132747;
//+
MeshSize {12} = 0.132747;
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
Save "../msh/cad_489.msh2";
//+
Save "../mesh/cad_489.mesh";
//+
Save "../geo_unrolled/cad_489.geo_unrolled";
