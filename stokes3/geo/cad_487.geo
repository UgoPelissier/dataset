//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.575967, -4.604048, 0.000000, 37.788304, 9.482754, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {29.319046, 0.882705, 0.000000, 0.000000, 0.000000, 1.000000, 0.835504, 2*Pi};
//+
c0 = 0.08355037276686869;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {26.712880, 0.506452, 0.000000, 0.000000, 0.000000, 1.000000, 0.938661, 2*Pi};
//+
c1 = 0.09386612120542273;
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
