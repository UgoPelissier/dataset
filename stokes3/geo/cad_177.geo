//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.634294, -2.998117, 0.000000, 36.176263, 7.665288, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {25.718648, 1.762697, 0.000000, 0.000000, 0.000000, 1.000000, 1.346468, 2*Pi};
//+
MeshSize {9} = 0.134647;
//+
MeshSize {10} = 0.134647;
//+
Cylinder(3) = {16.688870, 0.834232, 0.000000, 0.000000, 0.000000, 1.000000, 0.809290, 2*Pi};
//+
MeshSize {11} = 0.080929;
//+
MeshSize {12} = 0.080929;
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
Save "../geo_unrolled/cad_177.geo_unrolled";
