//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041611, -4.268239, 0.000000, 35.421922, 9.974439, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {3.632049, 3.292270, 0.000000, 0.000000, 0.000000, 1.000000, 1.251345, 2*Pi};
//+
c0 = 0.12513454947436722;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {12.361771, 3.159190, 0.000000, 0.000000, 0.000000, 1.000000, 0.939070, 2*Pi};
//+
c1 = 0.0939069903383333;
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
