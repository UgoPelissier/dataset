//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.484231, -3.981316, 0.000000, 32.032766, 8.116475, 1.000000};
//+
MeshSize {1} = 3.276926;
//+
MeshSize {2} = 3.276926;
//+
MeshSize {3} = 0.238591;
//+
MeshSize {4} = 0.238591;
//+
MeshSize {5} = 0.238591;
//+
MeshSize {6} = 1.238715;
//+
MeshSize {7} = 1.238715;
//+
MeshSize {8} = 1.238715;
//+
Cylinder(2) = {20.324219, 0.761377, 0.000000, 0.000000, 0.000000, 1.000000, 0.695548, 2*Pi};
//+
MeshSize {9} = 0.069555;
//+
MeshSize {10} = 0.069555;
//+
Cylinder(3) = {3.478420, -1.585489, 0.000000, 0.000000, 0.000000, 1.000000, 1.448823, 2*Pi};
//+
MeshSize {11} = 0.144882;
//+
MeshSize {12} = 0.144882;
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
