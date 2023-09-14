//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.085234, -3.828368, 0.000000, 37.463218, 8.401609, 1.000000};
//+
MeshSize {1} = 1.478050;
//+
MeshSize {2} = 1.478050;
//+
MeshSize {3} = 1.537481;
//+
MeshSize {4} = 1.537481;
//+
MeshSize {5} = 0.753192;
//+
MeshSize {6} = 0.753192;
//+
MeshSize {7} = 0.506455;
//+
MeshSize {8} = 0.506455;
//+
Cylinder(2) = {15.522884, -0.761948, 0.000000, 0.000000, 0.000000, 1.000000, 0.958753, 2*Pi};
//+
MeshSize {9} = 0.095875;
//+
MeshSize {10} = 0.095875;
//+
Cylinder(3) = {32.005943, 2.475176, 0.000000, 0.000000, 0.000000, 1.000000, 0.861774, 2*Pi};
//+
MeshSize {11} = 0.086177;
//+
MeshSize {12} = 0.086177;
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
Save "../geo_unrolled/cad_467.geo_unrolled";
