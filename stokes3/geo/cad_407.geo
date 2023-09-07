//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.437500, -3.692505, 0.000000, 36.532878, 7.974440, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {6.899661, -1.214789, 0.000000, 0.000000, 0.000000, 1.000000, 1.232402, 2*Pi};
//+
c0 = 0.12324024101227127;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {10.931130, -1.887157, 0.000000, 0.000000, 0.000000, 1.000000, 0.867113, 2*Pi};
//+
c1 = 0.08671127070045395;
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
