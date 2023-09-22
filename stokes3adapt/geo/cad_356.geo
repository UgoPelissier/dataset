//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.570276, -4.015962, 0.000000, 32.475225, 9.858333, 1.000000};
//+
MeshSize {1} = 1.207509;
//+
MeshSize {2} = 1.207509;
//+
MeshSize {3} = 1.312683;
//+
MeshSize {4} = 1.312683;
//+
MeshSize {5} = 1.026895;
//+
MeshSize {6} = 1.026895;
//+
MeshSize {7} = 0.831313;
//+
MeshSize {8} = 0.831313;
//+
Cylinder(2) = {12.201156, 0.481926, 0.000000, 0.000000, 0.000000, 1.000000, 0.553127, 2*Pi};
//+
MeshSize {9} = 0.055313;
//+
MeshSize {10} = 0.055313;
//+
Cylinder(3) = {23.242690, 3.162093, 0.000000, 0.000000, 0.000000, 1.000000, 0.859245, 2*Pi};
//+
MeshSize {11} = 0.085924;
//+
MeshSize {12} = 0.085924;
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
Save "../geo_unrolled/cad_356.geo_unrolled";
