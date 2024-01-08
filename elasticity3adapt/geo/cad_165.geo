//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.414225, -4.398165, 0.000000, 35.922053, 9.700313, 1.000000};
//+
MeshSize {1} = 1.148249;
//+
MeshSize {2} = 1.148249;
//+
MeshSize {3} = 1.570852;
//+
MeshSize {4} = 1.570852;
//+
MeshSize {5} = 0.549053;
//+
MeshSize {6} = 0.549053;
//+
MeshSize {7} = 1.912757;
//+
MeshSize {8} = 1.912757;
//+
Cylinder(2) = {3.382718, 0.151456, 0.000000, 0.000000, 0.000000, 0.100000, 0.778226, 2*Pi};
//+
MeshSize {9} = 0.077823;
//+
MeshSize {10} = 0.077823;
//+
Cylinder(3) = {34.022969, -1.270051, 0.000000, 0.000000, 0.000000, 0.100000, 1.450254, 2*Pi};
//+
MeshSize {11} = 0.145025;
//+
MeshSize {12} = 0.145025;
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
Save "../msh/cad_165.msh2";
//+
Save "../mesh/cad_165.mesh";
//+
Save "../geo_unrolled/cad_165.geo_unrolled";
