//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.018742, -3.548537, 0.000000, 38.602359, 8.939398, 1.000000};
//+
MeshSize {1} = 3.887888;
//+
MeshSize {2} = 3.887888;
//+
MeshSize {3} = 3.887888;
//+
MeshSize {4} = 3.887888;
//+
MeshSize {5} = 0.761665;
//+
MeshSize {6} = 0.761665;
//+
MeshSize {7} = 0.748095;
//+
MeshSize {8} = 0.748095;
//+
Cylinder(2) = {22.145326, 1.872795, 0.000000, 0.000000, 0.000000, 1.000000, 0.917694, 2*Pi};
//+
MeshSize {9} = 0.091769;
//+
MeshSize {10} = 0.091769;
//+
Cylinder(3) = {30.947943, 1.055969, 0.000000, 0.000000, 0.000000, 1.000000, 1.332026, 2*Pi};
//+
MeshSize {11} = 0.133203;
//+
MeshSize {12} = 0.133203;
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
Save "../geo_unrolled/cad_075.geo_unrolled";
