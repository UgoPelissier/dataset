//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.680606, -3.974764, 0.000000, 33.451676, 9.459471, 1.000000};
//+
MeshSize {1} = 0.570086;
//+
MeshSize {2} = 0.570086;
//+
MeshSize {3} = 0.766816;
//+
MeshSize {4} = 0.766816;
//+
MeshSize {5} = 2.158525;
//+
MeshSize {6} = 2.158525;
//+
MeshSize {7} = 2.575474;
//+
MeshSize {8} = 2.575474;
//+
Cylinder(2) = {16.467725, -1.227717, 0.000000, 0.000000, 0.000000, 0.100000, 1.054911, 2*Pi};
//+
MeshSize {9} = 0.105491;
//+
MeshSize {10} = 0.105491;
//+
Cylinder(3) = {8.662010, -1.828960, 0.000000, 0.000000, 0.000000, 0.100000, 0.844356, 2*Pi};
//+
MeshSize {11} = 0.084436;
//+
MeshSize {12} = 0.084436;
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
Save "../msh/cad_271.msh2";
//+
Save "../mesh/cad_271.mesh";
//+
Save "../geo_unrolled/cad_271.geo_unrolled";
