//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.664144, -4.059808, 0.000000, 29.969163, 8.836061, 1.000000};
//+
MeshSize {1} = 0.621096;
//+
MeshSize {2} = 0.621096;
//+
MeshSize {3} = 3.095026;
//+
MeshSize {4} = 3.095026;
//+
MeshSize {5} = 0.621096;
//+
MeshSize {6} = 0.621096;
//+
MeshSize {7} = 3.095026;
//+
MeshSize {8} = 3.095026;
//+
Cylinder(2) = {6.672851, -0.621678, 0.000000, 0.000000, 0.000000, 1.000000, 0.711851, 2*Pi};
//+
MeshSize {9} = 0.071185;
//+
MeshSize {10} = 0.071185;
//+
Cylinder(3) = {8.226171, 2.901264, 0.000000, 0.000000, 0.000000, 1.000000, 0.837755, 2*Pi};
//+
MeshSize {11} = 0.083776;
//+
MeshSize {12} = 0.083776;
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
