//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.785382, -4.402565, 0.000000, 29.247692, 9.885388, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {24.566353, -0.177281, 0.000000, 1.067244, 1.067244};
//+
c0 = 0.10672438855119354;
//+
MeshSize {5} = c0;
//+
Disk(3) = {28.082191, -1.394647, 0.000000, 1.181836, 1.181836};
//+
c1 = 0.11818357356103366;
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
