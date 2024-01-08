//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.615377, -3.701354, 0.000000, 38.037698, 7.899249, 1.000000};
//+
MeshSize {1} = 1.522504;
//+
MeshSize {2} = 1.522504;
//+
MeshSize {3} = 1.437323;
//+
MeshSize {4} = 1.437323;
//+
MeshSize {5} = 0.850561;
//+
MeshSize {6} = 0.850561;
//+
MeshSize {7} = 0.870486;
//+
MeshSize {8} = 0.870486;
//+
Cylinder(2) = {12.656401, 0.613669, 0.000000, 0.000000, 0.000000, 0.100000, 0.812715, 2*Pi};
//+
MeshSize {9} = 0.081271;
//+
MeshSize {10} = 0.081271;
//+
Cylinder(3) = {29.496988, -0.013701, 0.000000, 0.000000, 0.000000, 0.100000, 1.014725, 2*Pi};
//+
MeshSize {11} = 0.101472;
//+
MeshSize {12} = 0.101472;
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
Save "../msh/cad_109.msh2";
//+
Save "../mesh/cad_109.mesh";
//+
Save "../geo_unrolled/cad_109.geo_unrolled";
