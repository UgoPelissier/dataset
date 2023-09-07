//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.755484, -4.132437, 0.000000, 30.920520, 8.496862, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {9.546106, 2.091507, 0.000000, 0.000000, 0.000000, 1.000000, 1.252428, 2*Pi};
//+
c0 = 0.12524278530661706;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {16.868132, -1.021316, 0.000000, 0.000000, 0.000000, 1.000000, 1.205608, 2*Pi};
//+
c1 = 0.12056078045820483;
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
