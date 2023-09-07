//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.870481, -3.367512, 0.000000, 32.627118, 7.908784, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {29.963332, 1.968980, 0.000000, 1.188851, 1.188851};
//+
c0 = 0.11888505376159544;
//+
MeshSize {5} = c0;
//+
Disk(3) = {9.549140, -0.897128, 0.000000, 0.662907, 0.662907};
//+
c1 = 0.06629074055986205;
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
