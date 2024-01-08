//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.634294, -2.998117, 0.000000, 36.176263, 7.665288, 0.100000};
//+
MeshSize {1} = 1.736443;
//+
MeshSize {2} = 1.736443;
//+
MeshSize {3} = 1.736489;
//+
MeshSize {4} = 1.736489;
//+
MeshSize {5} = 0.821191;
//+
MeshSize {6} = 0.821191;
//+
MeshSize {7} = 0.774896;
//+
MeshSize {8} = 0.774896;
//+
Cylinder(2) = {25.718648, 1.762697, 0.000000, 0.000000, 0.000000, 0.100000, 1.346468, 2*Pi};
//+
MeshSize {9} = 0.134647;
//+
MeshSize {10} = 0.134647;
//+
Cylinder(3) = {16.688870, 0.834232, 0.000000, 0.000000, 0.000000, 0.100000, 0.809290, 2*Pi};
//+
MeshSize {11} = 0.080929;
//+
MeshSize {12} = 0.080929;
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
Save "../msh/cad_177.msh2";
//+
Save "../mesh/cad_177.mesh";
//+
Save "../geo_unrolled/cad_177.geo_unrolled";
