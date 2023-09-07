//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101752, -3.285502, 0.000000, 31.767846, 8.314962, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {16.818066, 1.156683, 0.000000, 0.000000, 0.000000, 1.000000, 1.096971, 2*Pi};
//+
c0 = 0.10969708292829937;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {19.482154, 0.723441, 0.000000, 0.000000, 0.000000, 1.000000, 0.847925, 2*Pi};
//+
c1 = 0.08479246374367544;
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
