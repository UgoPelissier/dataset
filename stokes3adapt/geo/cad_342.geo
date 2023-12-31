//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.864594, -3.391584, 0.000000, 36.188068, 8.286248, 1.000000};
//+
MeshSize {1} = 0.923449;
//+
MeshSize {2} = 0.923449;
//+
MeshSize {3} = 1.198474;
//+
MeshSize {4} = 1.198474;
//+
MeshSize {5} = 1.330840;
//+
MeshSize {6} = 1.330840;
//+
MeshSize {7} = 0.914387;
//+
MeshSize {8} = 0.914387;
//+
Cylinder(2) = {8.805278, -0.398516, 0.000000, 0.000000, 0.000000, 1.000000, 1.450727, 2*Pi};
//+
MeshSize {9} = 0.145073;
//+
MeshSize {10} = 0.145073;
//+
Cylinder(3) = {29.084264, 2.301840, 0.000000, 0.000000, 0.000000, 1.000000, 1.413354, 2*Pi};
//+
MeshSize {11} = 0.141335;
//+
MeshSize {12} = 0.141335;
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
Save "../geo_unrolled/cad_342.geo_unrolled";
