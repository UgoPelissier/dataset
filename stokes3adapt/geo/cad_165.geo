//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.414225, -4.398165, 0.000000, 35.922053, 9.700313, 1.000000};
//+
MeshSize {1} = 1.148249;
//+
MeshSize {2} = 1.148249;
//+
MeshSize {3} = 1.570852;
//+
MeshSize {4} = 1.570852;
//+
MeshSize {5} = 0.549053;
//+
MeshSize {6} = 0.549053;
//+
MeshSize {7} = 1.912757;
//+
MeshSize {8} = 1.912757;
//+
Cylinder(2) = {3.382718, 0.151456, 0.000000, 0.000000, 0.000000, 1.000000, 0.778226, 2*Pi};
//+
MeshSize {9} = 0.077823;
//+
MeshSize {10} = 0.077823;
//+
Cylinder(3) = {34.022969, -1.270051, 0.000000, 0.000000, 0.000000, 1.000000, 1.450254, 2*Pi};
//+
MeshSize {11} = 0.145025;
//+
MeshSize {12} = 0.145025;
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
Save "../geo_unrolled/cad_165.geo_unrolled";
