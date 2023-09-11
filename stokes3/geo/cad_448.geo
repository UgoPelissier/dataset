//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.627200, -3.276829, 0.000000, 34.742475, 8.337774, 1.000000};
//+
MeshSize {1} = 3.561451;
//+
MeshSize {2} = 3.561451;
//+
MeshSize {3} = 1.041431;
//+
MeshSize {4} = 1.041431;
//+
MeshSize {5} = 1.041431;
//+
MeshSize {6} = 0.681494;
//+
MeshSize {7} = 0.681494;
//+
MeshSize {8} = 0.681494;
//+
Cylinder(2) = {27.729438, -0.717440, 0.000000, 0.000000, 0.000000, 1.000000, 1.242585, 2*Pi};
//+
MeshSize {9} = 0.124258;
//+
MeshSize {10} = 0.124258;
//+
Cylinder(3) = {11.159233, 0.299205, 0.000000, 0.000000, 0.000000, 1.000000, 0.708262, 2*Pi};
//+
MeshSize {11} = 0.070826;
//+
MeshSize {12} = 0.070826;
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
