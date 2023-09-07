//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.021488, -3.919570, 0.000000, 35.272665, 8.333924, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {12.420474, 1.043665, 0.000000, 0.000000, 0.000000, 1.000000, 0.736205, 2*Pi};
//+
c0 = 0.07362047657072128;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {8.026878, -2.163813, 0.000000, 0.000000, 0.000000, 1.000000, 0.652749, 2*Pi};
//+
c1 = 0.06527491541688517;
//+
MeshSize {11, 12} = c1;
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
