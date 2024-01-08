//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.455584, -3.647268, 0.000000, 36.646575, 8.663491, 0.100000};
//+
MeshSize {1} = 2.638557;
//+
MeshSize {2} = 2.638557;
//+
MeshSize {3} = 2.276605;
//+
MeshSize {4} = 2.276605;
//+
MeshSize {5} = 0.667779;
//+
MeshSize {6} = 0.667779;
//+
MeshSize {7} = 0.634873;
//+
MeshSize {8} = 0.634873;
//+
Cylinder(2) = {22.889883, 3.576823, 0.000000, 0.000000, 0.000000, 0.100000, 0.892077, 2*Pi};
//+
MeshSize {9} = 0.089208;
//+
MeshSize {10} = 0.089208;
//+
Cylinder(3) = {25.957213, 1.431041, 0.000000, 0.000000, 0.000000, 0.100000, 1.288779, 2*Pi};
//+
MeshSize {11} = 0.128878;
//+
MeshSize {12} = 0.128878;
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
Save "../msh/cad_349.msh2";
//+
Save "../mesh/cad_349.mesh";
//+
Save "../geo_unrolled/cad_349.geo_unrolled";
