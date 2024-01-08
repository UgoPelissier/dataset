//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.114013, -3.893423, 0.000000, 31.872454, 7.999373, 0.100000};
//+
MeshSize {1} = 0.929232;
//+
MeshSize {2} = 0.929232;
//+
MeshSize {3} = 0.921782;
//+
MeshSize {4} = 0.921782;
//+
MeshSize {5} = 1.005169;
//+
MeshSize {6} = 1.005169;
//+
MeshSize {7} = 1.510054;
//+
MeshSize {8} = 1.510054;
//+
Cylinder(2) = {8.412246, 0.185154, 0.000000, 0.000000, 0.000000, 0.100000, 0.701673, 2*Pi};
//+
MeshSize {9} = 0.070167;
//+
MeshSize {10} = 0.070167;
//+
Cylinder(3) = {22.500456, -1.637062, 0.000000, 0.000000, 0.000000, 0.100000, 0.539406, 2*Pi};
//+
MeshSize {11} = 0.053941;
//+
MeshSize {12} = 0.053941;
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
Save "../msh/cad_224.msh2";
//+
Save "../mesh/cad_224.mesh";
//+
Save "../geo_unrolled/cad_224.geo_unrolled";
