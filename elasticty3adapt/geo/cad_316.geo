//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.729924, -3.631638, 0.000000, 36.257629, 7.545971, 1.000000};
//+
MeshSize {1} = 0.441529;
//+
MeshSize {2} = 0.441529;
//+
MeshSize {3} = 0.626574;
//+
MeshSize {4} = 0.626574;
//+
MeshSize {5} = 3.312316;
//+
MeshSize {6} = 3.312316;
//+
MeshSize {7} = 2.993714;
//+
MeshSize {8} = 2.993714;
//+
Cylinder(2) = {21.563926, 1.233980, 0.000000, 0.000000, 0.000000, 0.100000, 0.543482, 2*Pi};
//+
MeshSize {9} = 0.054348;
//+
MeshSize {10} = 0.054348;
//+
Cylinder(3) = {6.299707, -1.629828, 0.000000, 0.000000, 0.000000, 0.100000, 1.289188, 2*Pi};
//+
MeshSize {11} = 0.128919;
//+
MeshSize {12} = 0.128919;
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
Save "../msh/cad_316.msh2";
//+
Save "../mesh/cad_316.mesh";
//+
Save "../geo_unrolled/cad_316.geo_unrolled";
