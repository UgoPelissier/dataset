//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.157698, -4.822159, 0.000000, 36.028750, 9.827122, 0.100000};
//+
MeshSize {1} = 0.381959;
//+
MeshSize {2} = 0.381959;
//+
MeshSize {3} = 0.815409;
//+
MeshSize {4} = 0.815409;
//+
MeshSize {5} = 3.213417;
//+
MeshSize {6} = 3.213417;
//+
MeshSize {7} = 2.336554;
//+
MeshSize {8} = 2.336554;
//+
Cylinder(2) = {23.324876, 1.978476, 0.000000, 0.000000, 0.000000, 0.100000, 1.291466, 2*Pi};
//+
MeshSize {9} = 0.129147;
//+
MeshSize {10} = 0.129147;
//+
Cylinder(3) = {4.553249, -2.627039, 0.000000, 0.000000, 0.000000, 0.100000, 1.481676, 2*Pi};
//+
MeshSize {11} = 0.148168;
//+
MeshSize {12} = 0.148168;
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
Save "../msh/cad_297.msh2";
//+
Save "../mesh/cad_297.mesh";
//+
Save "../geo_unrolled/cad_297.geo_unrolled";
