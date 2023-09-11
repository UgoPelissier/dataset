//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.536565, -3.521337, 0.000000, 32.238113, 8.274767, 1.000000};
//+
MeshSize {1} = 1.610893;
//+
MeshSize {2} = 1.610893;
//+
MeshSize {3} = 0.682363;
//+
MeshSize {4} = 0.682363;
//+
MeshSize {5} = 1.610893;
//+
MeshSize {6} = 1.610893;
//+
MeshSize {7} = 1.428411;
//+
MeshSize {8} = 1.428411;
//+
Cylinder(2) = {17.580015, -0.904171, 0.000000, 0.000000, 0.000000, 1.000000, 1.134294, 2*Pi};
//+
MeshSize {9} = 0.113429;
//+
MeshSize {10} = 0.113429;
//+
Cylinder(3) = {27.351336, 1.498194, 0.000000, 0.000000, 0.000000, 1.000000, 0.566115, 2*Pi};
//+
MeshSize {11} = 0.056612;
//+
MeshSize {12} = 0.056612;
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
