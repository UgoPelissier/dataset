//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.065361, -3.946284, 0.000000, 30.585133, 8.149061, 1.000000};
//+
MeshSize {1} = 0.765032;
//+
MeshSize {2} = 0.765032;
//+
MeshSize {3} = 0.732338;
//+
MeshSize {4} = 0.732338;
//+
MeshSize {5} = 1.665269;
//+
MeshSize {6} = 1.665269;
//+
MeshSize {7} = 2.286043;
//+
MeshSize {8} = 2.286043;
//+
Cylinder(2) = {17.467817, -2.216828, 0.000000, 0.000000, 0.000000, 1.000000, 1.023080, 2*Pi};
//+
MeshSize {9} = 0.102308;
//+
MeshSize {10} = 0.102308;
//+
Cylinder(3) = {7.752156, 0.489889, 0.000000, 0.000000, 0.000000, 1.000000, 0.953926, 2*Pi};
//+
MeshSize {11} = 0.095393;
//+
MeshSize {12} = 0.095393;
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
Save "../geo_unrolled/cad_492.geo_unrolled";
