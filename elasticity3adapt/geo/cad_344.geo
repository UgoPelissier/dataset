//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.004110, -3.560522, 0.000000, 36.866413, 8.985719, 1.000000};
//+
MeshSize {1} = 0.358831;
//+
MeshSize {2} = 0.358831;
//+
MeshSize {3} = 0.535660;
//+
MeshSize {4} = 0.535660;
//+
MeshSize {5} = 3.823049;
//+
MeshSize {6} = 3.823049;
//+
MeshSize {7} = 3.665582;
//+
MeshSize {8} = 3.665582;
//+
Cylinder(2) = {3.210534, -0.297644, 0.000000, 0.000000, 0.000000, 0.100000, 0.546140, 2*Pi};
//+
MeshSize {9} = 0.054614;
//+
MeshSize {10} = 0.054614;
//+
Cylinder(3) = {19.193973, 1.428588, 0.000000, 0.000000, 0.000000, 0.100000, 0.812481, 2*Pi};
//+
MeshSize {11} = 0.081248;
//+
MeshSize {12} = 0.081248;
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
Save "../msh/cad_344.msh2";
//+
Save "../mesh/cad_344.mesh";
//+
Save "../geo_unrolled/cad_344.geo_unrolled";
