//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.330563, -3.232440, 0.000000, 31.217494, 7.884258, 0.100000};
//+
MeshSize {1} = 0.372070;
//+
MeshSize {2} = 0.372070;
//+
MeshSize {3} = 0.531524;
//+
MeshSize {4} = 0.531524;
//+
MeshSize {5} = 3.878941;
//+
MeshSize {6} = 3.878941;
//+
MeshSize {7} = 3.547857;
//+
MeshSize {8} = 3.547857;
//+
Cylinder(2) = {19.421258, 1.276384, 0.000000, 0.000000, 0.000000, 0.100000, 0.990551, 2*Pi};
//+
MeshSize {9} = 0.099055;
//+
MeshSize {10} = 0.099055;
//+
Cylinder(3) = {2.150835, 0.040528, 0.000000, 0.000000, 0.000000, 0.100000, 0.915931, 2*Pi};
//+
MeshSize {11} = 0.091593;
//+
MeshSize {12} = 0.091593;
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
Save "../msh/cad_246.msh2";
//+
Save "../mesh/cad_246.mesh";
//+
Save "../geo_unrolled/cad_246.geo_unrolled";
