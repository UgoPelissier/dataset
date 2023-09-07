//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.491619, -4.139942, 0.000000, 30.490555, 9.672250, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {25.585802, -2.230228, 0.000000, 0.000000, 0.000000, 1.000000, 0.916773, 2*Pi};
//+
c0 = 0.09167727277053828;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {25.528364, 2.330478, 0.000000, 0.000000, 0.000000, 1.000000, 1.259493, 2*Pi};
//+
c1 = 0.1259493295226257;
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
