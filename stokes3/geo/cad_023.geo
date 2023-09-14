//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.227595, -4.136663, 0.000000, 31.703702, 8.320655, 1.000000};
//+
MeshSize {1} = 1.533748;
//+
MeshSize {2} = 1.533748;
//+
MeshSize {3} = 1.582643;
//+
MeshSize {4} = 1.582643;
//+
MeshSize {5} = 1.043348;
//+
MeshSize {6} = 1.043348;
//+
MeshSize {7} = 1.101858;
//+
MeshSize {8} = 1.101858;
//+
Cylinder(2) = {20.483344, -0.834742, 0.000000, 0.000000, 0.000000, 1.000000, 1.481150, 2*Pi};
//+
MeshSize {9} = 0.148115;
//+
MeshSize {10} = 0.148115;
//+
Cylinder(3) = {16.330402, -0.955249, 0.000000, 0.000000, 0.000000, 1.000000, 1.076588, 2*Pi};
//+
MeshSize {11} = 0.107659;
//+
MeshSize {12} = 0.107659;
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
Save "../geo_unrolled/cad_023.geo_unrolled";
