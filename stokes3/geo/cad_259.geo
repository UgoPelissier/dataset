//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.430456, -4.377798, 0.000000, 32.156928, 8.776691, 1.000000};
//+
MeshSize {1} = 1.616727;
//+
MeshSize {2} = 1.616727;
//+
MeshSize {3} = 1.616727;
//+
MeshSize {4} = 1.323345;
//+
MeshSize {5} = 1.323345;
//+
MeshSize {6} = 1.323345;
//+
MeshSize {7} = 1.540959;
//+
MeshSize {8} = 1.540959;
//+
Cylinder(2) = {16.906262, 0.706684, 0.000000, 0.000000, 0.000000, 1.000000, 1.075235, 2*Pi};
//+
MeshSize {9} = 0.107524;
//+
MeshSize {10} = 0.107524;
//+
Cylinder(3) = {14.526757, -0.955482, 0.000000, 0.000000, 0.000000, 1.000000, 1.272342, 2*Pi};
//+
MeshSize {11} = 0.127234;
//+
MeshSize {12} = 0.127234;
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
