//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.186906, -3.535690, 0.000000, 36.986121, 7.795826, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {8.562670, 2.425848, 0.000000, 0.000000, 0.000000, 1.000000, 1.220256, 2*Pi};
//+
c0 = 0.12202556588749491;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {17.899431, -0.165157, 0.000000, 0.000000, 0.000000, 1.000000, 0.710704, 2*Pi};
//+
c1 = 0.07107039510517635;
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
