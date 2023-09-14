//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.107817, -3.031026, 0.000000, 35.026975, 7.648163, 1.000000};
//+
MeshSize {1} = 0.366141;
//+
MeshSize {2} = 0.366141;
//+
MeshSize {3} = 0.710830;
//+
MeshSize {4} = 0.710830;
//+
MeshSize {5} = 1.141349;
//+
MeshSize {6} = 1.141349;
//+
MeshSize {7} = 1.069828;
//+
MeshSize {8} = 1.069828;
//+
Cylinder(2) = {4.178307, -1.889001, 0.000000, 0.000000, 0.000000, 1.000000, 0.566247, 2*Pi};
//+
MeshSize {9} = 0.056625;
//+
MeshSize {10} = 0.056625;
//+
Cylinder(3) = {23.455510, 1.946842, 0.000000, 0.000000, 0.000000, 1.000000, 1.282371, 2*Pi};
//+
MeshSize {11} = 0.128237;
//+
MeshSize {12} = 0.128237;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_412.geo_unrolled";
