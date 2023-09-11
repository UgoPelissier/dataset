//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.706790, -3.595875, 0.000000, 38.938913, 7.513227, 1.000000};
//+
MeshSize {1} = 3.982328;
//+
MeshSize {2} = 3.982328;
//+
MeshSize {3} = 0.757091;
//+
MeshSize {4} = 0.757091;
//+
MeshSize {5} = 3.982328;
//+
MeshSize {6} = 3.982328;
//+
MeshSize {7} = 1.077968;
//+
MeshSize {8} = 1.077968;
//+
Cylinder(2) = {28.212113, 0.732333, 0.000000, 0.000000, 0.000000, 1.000000, 1.445716, 2*Pi};
//+
MeshSize {9} = 0.144572;
//+
MeshSize {10} = 0.144572;
//+
Cylinder(3) = {32.518544, 1.054040, 0.000000, 0.000000, 0.000000, 1.000000, 0.938972, 2*Pi};
//+
MeshSize {11} = 0.093897;
//+
MeshSize {12} = 0.093897;
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
