//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.186906, -3.535690, 0.000000, 36.986121, 7.795826, 1.000000};
//+
MeshSize {1} = 0.906047;
//+
MeshSize {2} = 0.906047;
//+
MeshSize {3} = 3.737683;
//+
MeshSize {4} = 3.737683;
//+
MeshSize {5} = 0.906047;
//+
MeshSize {6} = 0.906047;
//+
MeshSize {7} = 3.737683;
//+
MeshSize {8} = 3.737683;
//+
Cylinder(2) = {8.562670, 2.425848, 0.000000, 0.000000, 0.000000, 1.000000, 1.220256, 2*Pi};
//+
MeshSize {9} = 0.122026;
//+
MeshSize {10} = 0.122026;
//+
Cylinder(3) = {17.899431, -0.165157, 0.000000, 0.000000, 0.000000, 1.000000, 0.710704, 2*Pi};
//+
MeshSize {11} = 0.071070;
//+
MeshSize {12} = 0.071070;
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
