//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.065912, -4.010678, 0.000000, 36.717882, 8.210367, 0.100000};
//+
MeshSize {1} = 4.670069;
//+
MeshSize {2} = 4.670069;
//+
MeshSize {3} = 4.474471;
//+
MeshSize {4} = 4.474471;
//+
MeshSize {5} = 0.278371;
//+
MeshSize {6} = 0.278371;
//+
MeshSize {7} = 0.402288;
//+
MeshSize {8} = 0.402288;
//+
Cylinder(2) = {26.621669, 1.285449, 0.000000, 0.000000, 0.000000, 0.100000, 1.406343, 2*Pi};
//+
MeshSize {9} = 0.140634;
//+
MeshSize {10} = 0.140634;
//+
Cylinder(3) = {32.122539, -1.368159, 0.000000, 0.000000, 0.000000, 0.100000, 1.082740, 2*Pi};
//+
MeshSize {11} = 0.108274;
//+
MeshSize {12} = 0.108274;
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
Save "../msh/cad_083.msh2";
//+
Save "../mesh/cad_083.mesh";
//+
Save "../geo_unrolled/cad_083.geo_unrolled";
