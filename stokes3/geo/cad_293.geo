//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.964635, -3.873624, 0.000000, 32.118442, 8.162520, 1.000000};
//+
MeshSize {1} = 3.333387;
//+
MeshSize {2} = 3.333387;
//+
MeshSize {3} = 0.537162;
//+
MeshSize {4} = 0.537162;
//+
MeshSize {5} = 3.333387;
//+
MeshSize {6} = 3.333387;
//+
MeshSize {7} = 0.739863;
//+
MeshSize {8} = 0.739863;
//+
Cylinder(2) = {27.339415, 1.607020, 0.000000, 0.000000, 0.000000, 1.000000, 0.540330, 2*Pi};
//+
MeshSize {9} = 0.054033;
//+
MeshSize {10} = 0.054033;
//+
Cylinder(3) = {27.654963, -1.405638, 0.000000, 0.000000, 0.000000, 1.000000, 0.591213, 2*Pi};
//+
MeshSize {11} = 0.059121;
//+
MeshSize {12} = 0.059121;
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
