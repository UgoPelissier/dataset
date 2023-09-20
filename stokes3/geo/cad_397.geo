//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.304082, -3.832717, 0.000000, 37.589400, 7.929343, 1.000000};
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
Cylinder(2) = {9.852588, -0.124942, 0.000000, 0.000000, 0.000000, 1.000000, 1.470724, 2*Pi};
//+
MeshSize {9} = 0.147072;
//+
MeshSize {10} = 0.147072;
//+
Cylinder(3) = {26.973042, -1.702853, 0.000000, 0.000000, 0.000000, 1.000000, 1.473206, 2*Pi};
//+
MeshSize {11} = 0.147321;
//+
MeshSize {12} = 0.147321;
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
Save "../geo_unrolled/cad_397.geo_unrolled";
