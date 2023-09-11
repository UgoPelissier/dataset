//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.457046, -3.103287, 0.000000, 36.710833, 7.769414, 1.000000};
//+
MeshSize {1} = 3.737034;
//+
MeshSize {2} = 3.737034;
//+
MeshSize {3} = 1.519864;
//+
MeshSize {4} = 1.519864;
//+
MeshSize {5} = 1.784050;
//+
MeshSize {6} = 1.784050;
//+
MeshSize {7} = 1.519864;
//+
MeshSize {8} = 1.519864;
//+
Cylinder(2) = {21.884860, 2.114409, 0.000000, 0.000000, 0.000000, 1.000000, 0.950505, 2*Pi};
//+
MeshSize {9} = 0.095050;
//+
MeshSize {10} = 0.095050;
//+
Cylinder(3) = {18.540403, 0.235913, 0.000000, 0.000000, 0.000000, 1.000000, 0.548572, 2*Pi};
//+
MeshSize {11} = 0.054857;
//+
MeshSize {12} = 0.054857;
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
