//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.933700, -3.106937, 0.000000, 31.800875, 7.804685, 1.000000};
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
Cylinder(2) = {22.148942, -0.938949, 0.000000, 0.000000, 0.000000, 1.000000, 1.480161, 2*Pi};
//+
MeshSize {9} = 0.148016;
//+
MeshSize {10} = 0.148016;
//+
Cylinder(3) = {11.338063, -0.449736, 0.000000, 0.000000, 0.000000, 1.000000, 0.756444, 2*Pi};
//+
MeshSize {11} = 0.075644;
//+
MeshSize {12} = 0.075644;
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
Save "../geo_unrolled/cad_118.geo_unrolled";
