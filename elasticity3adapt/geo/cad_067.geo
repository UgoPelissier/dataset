//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.964026, -4.191196, 0.000000, 33.825793, 8.504043, 0.100000};
//+
MeshSize {1} = 1.833870;
//+
MeshSize {2} = 1.833870;
//+
MeshSize {3} = 2.074272;
//+
MeshSize {4} = 2.074272;
//+
MeshSize {5} = 0.746534;
//+
MeshSize {6} = 0.746534;
//+
MeshSize {7} = 0.754115;
//+
MeshSize {8} = 0.754115;
//+
Cylinder(2) = {23.869208, -0.082754, 0.000000, 0.000000, 0.000000, 0.100000, 1.409701, 2*Pi};
//+
MeshSize {9} = 0.140970;
//+
MeshSize {10} = 0.140970;
//+
Cylinder(3) = {19.077221, -1.486631, 0.000000, 0.000000, 0.000000, 0.100000, 1.494628, 2*Pi};
//+
MeshSize {11} = 0.149463;
//+
MeshSize {12} = 0.149463;
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
Save "../msh/cad_067.msh2";
//+
Save "../mesh/cad_067.mesh";
//+
Save "../geo_unrolled/cad_067.geo_unrolled";
