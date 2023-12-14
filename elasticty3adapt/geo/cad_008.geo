//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.997538, -3.299369, 0.000000, 29.911557, 7.617791, 1.000000};
//+
MeshSize {1} = 0.554319;
//+
MeshSize {2} = 0.554319;
//+
MeshSize {3} = 0.434257;
//+
MeshSize {4} = 0.434257;
//+
MeshSize {5} = 3.328325;
//+
MeshSize {6} = 3.328325;
//+
MeshSize {7} = 3.500526;
//+
MeshSize {8} = 3.500526;
//+
Cylinder(2) = {3.389155, 0.970857, 0.000000, 0.000000, 0.000000, 0.100000, 1.292079, 2*Pi};
//+
MeshSize {9} = 0.129208;
//+
MeshSize {10} = 0.129208;
//+
Cylinder(3) = {21.071050, 0.281632, 0.000000, 0.000000, 0.000000, 0.100000, 0.766825, 2*Pi};
//+
MeshSize {11} = 0.076683;
//+
MeshSize {12} = 0.076683;
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
Save "../msh/cad_008.msh2";
//+
Save "../mesh/cad_008.mesh";
//+
Save "../geo_unrolled/cad_008.geo_unrolled";
