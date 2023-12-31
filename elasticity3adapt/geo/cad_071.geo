//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.845373, -4.100064, 0.000000, 36.780683, 8.935250, 0.100000};
//+
MeshSize {1} = 1.549607;
//+
MeshSize {2} = 1.549607;
//+
MeshSize {3} = 2.227821;
//+
MeshSize {4} = 2.227821;
//+
MeshSize {5} = 0.806964;
//+
MeshSize {6} = 0.806964;
//+
MeshSize {7} = 0.729789;
//+
MeshSize {8} = 0.729789;
//+
Cylinder(2) = {30.794175, 1.014806, 0.000000, 0.000000, 0.000000, 0.100000, 1.142699, 2*Pi};
//+
MeshSize {9} = 0.114270;
//+
MeshSize {10} = 0.114270;
//+
Cylinder(3) = {11.625875, -1.431207, 0.000000, 0.000000, 0.000000, 0.100000, 0.506106, 2*Pi};
//+
MeshSize {11} = 0.050611;
//+
MeshSize {12} = 0.050611;
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
Save "../msh/cad_071.msh2";
//+
Save "../mesh/cad_071.mesh";
//+
Save "../geo_unrolled/cad_071.geo_unrolled";
