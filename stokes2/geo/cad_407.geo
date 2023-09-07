//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.437500, -3.692505, 0.000000, 36.532878, 7.974440, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {6.899661, -1.214789, 0.000000, 1.232402, 1.232402};
//+
c0 = 0.12324024101227127;
//+
MeshSize {5} = c0;
//+
Disk(3) = {10.931130, -1.887157, 0.000000, 0.867113, 0.867113};
//+
c1 = 0.08671127070045395;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
