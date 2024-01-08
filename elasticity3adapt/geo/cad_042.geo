//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.629446, -4.399940, 0.000000, 30.862530, 8.907099, 0.100000};
//+
MeshSize {1} = 0.977847;
//+
MeshSize {2} = 0.977847;
//+
MeshSize {3} = 0.954496;
//+
MeshSize {4} = 0.954496;
//+
MeshSize {5} = 1.323242;
//+
MeshSize {6} = 1.323242;
//+
MeshSize {7} = 0.969798;
//+
MeshSize {8} = 0.969798;
//+
Cylinder(2) = {24.073835, 0.946982, 0.000000, 0.000000, 0.000000, 0.100000, 1.290741, 2*Pi};
//+
MeshSize {9} = 0.129074;
//+
MeshSize {10} = 0.129074;
//+
Cylinder(3) = {7.107334, 0.201056, 0.000000, 0.000000, 0.000000, 0.100000, 0.950514, 2*Pi};
//+
MeshSize {11} = 0.095051;
//+
MeshSize {12} = 0.095051;
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
Save "../msh/cad_042.msh2";
//+
Save "../mesh/cad_042.mesh";
//+
Save "../geo_unrolled/cad_042.geo_unrolled";
