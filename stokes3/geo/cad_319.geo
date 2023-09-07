//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.870481, -3.367512, 0.000000, 32.627118, 7.908784, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {29.963332, 1.968980, 0.000000, 0.000000, 0.000000, 1.000000, 1.188851, 2*Pi};
//+
c0 = 0.11888505376159544;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {9.549140, -0.897128, 0.000000, 0.000000, 0.000000, 1.000000, 0.662907, 2*Pi};
//+
c1 = 0.06629074055986205;
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
