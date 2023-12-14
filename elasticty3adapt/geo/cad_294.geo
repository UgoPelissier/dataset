//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.799462, -3.741317, 0.000000, 33.837382, 9.478562, 1.000000};
//+
MeshSize {1} = 0.441634;
//+
MeshSize {2} = 0.441634;
//+
MeshSize {3} = 0.206771;
//+
MeshSize {4} = 0.206771;
//+
MeshSize {5} = 4.996497;
//+
MeshSize {6} = 4.996497;
//+
MeshSize {7} = 4.427256;
//+
MeshSize {8} = 4.427256;
//+
Cylinder(2) = {11.438771, 3.256325, 0.000000, 0.000000, 0.000000, 0.100000, 1.451644, 2*Pi};
//+
MeshSize {9} = 0.145164;
//+
MeshSize {10} = 0.145164;
//+
Cylinder(3) = {1.940991, 2.612793, 0.000000, 0.000000, 0.000000, 0.100000, 0.571385, 2*Pi};
//+
MeshSize {11} = 0.057138;
//+
MeshSize {12} = 0.057138;
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
Save "../msh/cad_294.msh2";
//+
Save "../mesh/cad_294.mesh";
//+
Save "../geo_unrolled/cad_294.geo_unrolled";
