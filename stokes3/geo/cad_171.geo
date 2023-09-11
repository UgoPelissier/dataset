//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.351547, -4.148344, 0.000000, 38.348825, 8.381398, 1.000000};
//+
MeshSize {1} = 1.406671;
//+
MeshSize {2} = 1.406671;
//+
MeshSize {3} = 1.406671;
//+
MeshSize {4} = 3.892661;
//+
MeshSize {5} = 3.892661;
//+
MeshSize {6} = 3.892661;
//+
MeshSize {7} = 3.892661;
//+
MeshSize {8} = 1.263549;
//+
Cylinder(2) = {14.060276, 2.523605, 0.000000, 0.000000, 0.000000, 1.000000, 1.179411, 2*Pi};
//+
MeshSize {9} = 0.117941;
//+
MeshSize {10} = 0.117941;
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
