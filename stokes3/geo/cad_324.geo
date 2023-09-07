//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.845419, -3.135781, 0.000000, 37.919529, 7.952840, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {31.335408, 2.090946, 0.000000, 0.000000, 0.000000, 1.000000, 0.683068, 2*Pi};
//+
c0 = 0.0683068357012595;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {26.349015, -1.307189, 0.000000, 0.000000, 0.000000, 1.000000, 0.589300, 2*Pi};
//+
c1 = 0.058929982201943926;
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
