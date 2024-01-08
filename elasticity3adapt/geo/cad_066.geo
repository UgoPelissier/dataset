//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.174246, -4.355208, 0.000000, 37.242934, 8.815214, 1.000000};
//+
MeshSize {1} = 4.468746;
//+
MeshSize {2} = 4.468746;
//+
MeshSize {3} = 4.510058;
//+
MeshSize {4} = 4.510058;
//+
MeshSize {5} = 0.355916;
//+
MeshSize {6} = 0.355916;
//+
MeshSize {7} = 0.344759;
//+
MeshSize {8} = 0.344759;
//+
Cylinder(2) = {27.900692, -0.209397, 0.000000, 0.000000, 0.000000, 0.100000, 1.278017, 2*Pi};
//+
MeshSize {9} = 0.127802;
//+
MeshSize {10} = 0.127802;
//+
Cylinder(3) = {32.439981, 0.189097, 0.000000, 0.000000, 0.000000, 0.100000, 0.958043, 2*Pi};
//+
MeshSize {11} = 0.095804;
//+
MeshSize {12} = 0.095804;
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
Save "../msh/cad_066.msh2";
//+
Save "../mesh/cad_066.mesh";
//+
Save "../geo_unrolled/cad_066.geo_unrolled";
