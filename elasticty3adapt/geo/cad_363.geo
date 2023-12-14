//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.051620, -3.540031, 0.000000, 38.037338, 9.060793, 1.000000};
//+
MeshSize {1} = 2.337450;
//+
MeshSize {2} = 2.337450;
//+
MeshSize {3} = 1.469850;
//+
MeshSize {4} = 1.469850;
//+
MeshSize {5} = 0.572846;
//+
MeshSize {6} = 0.572846;
//+
MeshSize {7} = 0.963030;
//+
MeshSize {8} = 0.963030;
//+
Cylinder(2) = {32.430662, -2.012866, 0.000000, 0.000000, 0.000000, 0.100000, 0.632539, 2*Pi};
//+
MeshSize {9} = 0.063254;
//+
MeshSize {10} = 0.063254;
//+
Cylinder(3) = {10.701928, 3.242481, 0.000000, 0.000000, 0.000000, 0.100000, 0.514203, 2*Pi};
//+
MeshSize {11} = 0.051420;
//+
MeshSize {12} = 0.051420;
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
Save "../msh/cad_363.msh2";
//+
Save "../mesh/cad_363.mesh";
//+
Save "../geo_unrolled/cad_363.geo_unrolled";
