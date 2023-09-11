//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.616519, -3.275061, 0.000000, 34.262024, 7.516531, 1.000000};
//+
MeshSize {1} = 3.508044;
//+
MeshSize {2} = 3.508044;
//+
MeshSize {3} = 3.508044;
//+
MeshSize {4} = 3.508044;
//+
MeshSize {5} = 0.666091;
//+
MeshSize {6} = 0.666091;
//+
MeshSize {7} = 0.584039;
//+
MeshSize {8} = 0.584039;
//+
Cylinder(2) = {28.361740, 1.308124, 0.000000, 0.000000, 0.000000, 1.000000, 1.306168, 2*Pi};
//+
MeshSize {9} = 0.130617;
//+
MeshSize {10} = 0.130617;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
