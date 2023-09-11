//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.997456, -3.169616, 0.000000, 30.345318, 7.679365, 1.000000};
//+
MeshSize {1} = 3.157709;
//+
MeshSize {2} = 3.157709;
//+
MeshSize {3} = 0.679045;
//+
MeshSize {4} = 0.679045;
//+
MeshSize {5} = 3.157709;
//+
MeshSize {6} = 3.157709;
//+
MeshSize {7} = 1.053751;
//+
MeshSize {8} = 1.053751;
//+
Cylinder(2) = {20.129674, -0.646177, 0.000000, 0.000000, 0.000000, 1.000000, 0.956029, 2*Pi};
//+
MeshSize {9} = 0.095603;
//+
MeshSize {10} = 0.095603;
//+
Cylinder(3) = {24.727206, 0.801952, 0.000000, 0.000000, 0.000000, 1.000000, 0.925704, 2*Pi};
//+
MeshSize {11} = 0.092570;
//+
MeshSize {12} = 0.092570;
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
