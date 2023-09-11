//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.474590, -3.619679, 0.000000, 38.228188, 7.529658, 1.000000};
//+
MeshSize {1} = 3.888546;
//+
MeshSize {2} = 3.888546;
//+
MeshSize {3} = 1.202992;
//+
MeshSize {4} = 1.202992;
//+
MeshSize {5} = 1.202992;
//+
MeshSize {6} = 0.311039;
//+
MeshSize {7} = 0.311039;
//+
MeshSize {8} = 0.311039;
//+
Cylinder(2) = {35.886087, -0.385363, 0.000000, 0.000000, 0.000000, 1.000000, 1.178493, 2*Pi};
//+
MeshSize {9} = 0.117849;
//+
MeshSize {10} = 0.117849;
//+
Cylinder(3) = {12.964169, -1.753749, 0.000000, 0.000000, 0.000000, 1.000000, 0.598277, 2*Pi};
//+
MeshSize {11} = 0.059828;
//+
MeshSize {12} = 0.059828;
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
