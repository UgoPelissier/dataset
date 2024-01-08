//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.815475, -3.060647, 0.000000, 38.926778, 7.840311, 1.000000};
//+
MeshSize {1} = 0.576134;
//+
MeshSize {2} = 0.576134;
//+
MeshSize {3} = 0.551554;
//+
MeshSize {4} = 0.551554;
//+
MeshSize {5} = 3.089926;
//+
MeshSize {6} = 3.089926;
//+
MeshSize {7} = 2.837915;
//+
MeshSize {8} = 2.837915;
//+
Cylinder(2) = {12.743956, 3.506806, 0.000000, 0.000000, 0.000000, 0.100000, 0.700851, 2*Pi};
//+
MeshSize {9} = 0.070085;
//+
MeshSize {10} = 0.070085;
//+
Cylinder(3) = {11.582806, 1.528530, 0.000000, 0.000000, 0.000000, 0.100000, 0.991007, 2*Pi};
//+
MeshSize {11} = 0.099101;
//+
MeshSize {12} = 0.099101;
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
Save "../msh/cad_148.msh2";
//+
Save "../mesh/cad_148.mesh";
//+
Save "../geo_unrolled/cad_148.geo_unrolled";
