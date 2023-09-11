//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.443774, -4.350133, 0.000000, 34.382858, 8.750136, 1.000000};
//+
MeshSize {1} = 3.510036;
//+
MeshSize {2} = 3.510036;
//+
MeshSize {3} = 1.572962;
//+
MeshSize {4} = 1.572962;
//+
MeshSize {5} = 1.572962;
//+
MeshSize {6} = 1.727192;
//+
MeshSize {7} = 1.727192;
//+
MeshSize {8} = 1.727192;
//+
Cylinder(2) = {18.236198, 2.410953, 0.000000, 0.000000, 0.000000, 1.000000, 0.643295, 2*Pi};
//+
MeshSize {9} = 0.064330;
//+
MeshSize {10} = 0.064330;
//+
Cylinder(3) = {15.998255, 1.869706, 0.000000, 0.000000, 0.000000, 1.000000, 1.022345, 2*Pi};
//+
MeshSize {11} = 0.102234;
//+
MeshSize {12} = 0.102234;
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
