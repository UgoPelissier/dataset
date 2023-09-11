//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.591581, -3.825533, 0.000000, 32.200128, 9.325044, 1.000000};
//+
MeshSize {1} = 3.312152;
//+
MeshSize {2} = 3.312152;
//+
MeshSize {3} = 3.312152;
//+
MeshSize {4} = 3.312152;
//+
MeshSize {5} = 0.794669;
//+
MeshSize {6} = 0.794669;
//+
MeshSize {7} = 0.794669;
//+
MeshSize {8} = 0.794669;
//+
Cylinder(2) = {24.140563, -2.362461, 0.000000, 0.000000, 0.000000, 1.000000, 0.827296, 2*Pi};
//+
MeshSize {9} = 0.082730;
//+
MeshSize {10} = 0.082730;
//+
Cylinder(3) = {19.001714, 3.653763, 0.000000, 0.000000, 0.000000, 1.000000, 1.091772, 2*Pi};
//+
MeshSize {11} = 0.109177;
//+
MeshSize {12} = 0.109177;
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
