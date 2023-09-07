//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.508825, -4.011651, 0.000000, 38.120460, 8.111379, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {18.223929, -0.949198, 0.000000, 0.000000, 0.000000, 1.000000, 0.650085, 2*Pi};
//+
c0 = 0.06500846682411501;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {35.305145, 1.952132, 0.000000, 0.000000, 0.000000, 1.000000, 0.919369, 2*Pi};
//+
c1 = 0.09193693043627986;
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
