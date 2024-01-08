//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.757189, -4.792327, 0.000000, 39.086491, 9.930412, 1.000000};
//+
MeshSize {1} = 0.959580;
//+
MeshSize {2} = 0.959580;
//+
MeshSize {3} = 1.031609;
//+
MeshSize {4} = 1.031609;
//+
MeshSize {5} = 1.261329;
//+
MeshSize {6} = 1.261329;
//+
MeshSize {7} = 0.949530;
//+
MeshSize {8} = 0.949530;
//+
Cylinder(2) = {24.991000, 3.317831, 0.000000, 0.000000, 0.000000, 0.100000, 0.757886, 2*Pi};
//+
MeshSize {9} = 0.075789;
//+
MeshSize {10} = 0.075789;
//+
Cylinder(3) = {15.463298, -1.019307, 0.000000, 0.000000, 0.000000, 0.100000, 0.826127, 2*Pi};
//+
MeshSize {11} = 0.082613;
//+
MeshSize {12} = 0.082613;
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
Save "../msh/cad_205.msh2";
//+
Save "../mesh/cad_205.mesh";
//+
Save "../geo_unrolled/cad_205.geo_unrolled";
