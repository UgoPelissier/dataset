//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.393717, -4.284295, 0.000000, 31.354287, 9.941268, 1.000000};
//+
MeshSize {1} = 3.213476;
//+
MeshSize {2} = 3.213476;
//+
MeshSize {3} = 1.055345;
//+
MeshSize {4} = 1.055345;
//+
MeshSize {5} = 1.055345;
//+
MeshSize {6} = 0.914957;
//+
MeshSize {7} = 0.914957;
//+
MeshSize {8} = 0.914957;
//+
Cylinder(2) = {22.167871, -0.396949, 0.000000, 0.000000, 0.000000, 1.000000, 1.189211, 2*Pi};
//+
MeshSize {9} = 0.118921;
//+
MeshSize {10} = 0.118921;
//+
Cylinder(3) = {10.331950, 1.121157, 0.000000, 0.000000, 0.000000, 1.000000, 0.759701, 2*Pi};
//+
MeshSize {11} = 0.075970;
//+
MeshSize {12} = 0.075970;
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
