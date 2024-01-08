//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.453229, -3.009812, 0.000000, 31.352780, 7.546508, 1.000000};
//+
MeshSize {1} = 2.474089;
//+
MeshSize {2} = 2.474089;
//+
MeshSize {3} = 2.285520;
//+
MeshSize {4} = 2.285520;
//+
MeshSize {5} = 0.716988;
//+
MeshSize {6} = 0.716988;
//+
MeshSize {7} = 0.613278;
//+
MeshSize {8} = 0.613278;
//+
Cylinder(2) = {22.370172, 2.737193, 0.000000, 0.000000, 0.000000, 0.100000, 1.076843, 2*Pi};
//+
MeshSize {9} = 0.107684;
//+
MeshSize {10} = 0.107684;
//+
Cylinder(3) = {19.542321, 2.030910, 0.000000, 0.000000, 0.000000, 0.100000, 0.933724, 2*Pi};
//+
MeshSize {11} = 0.093372;
//+
MeshSize {12} = 0.093372;
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
Save "../msh/cad_427.msh2";
//+
Save "../mesh/cad_427.mesh";
//+
Save "../geo_unrolled/cad_427.geo_unrolled";
