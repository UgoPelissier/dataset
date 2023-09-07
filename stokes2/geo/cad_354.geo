//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.330563, -3.232440, 0.000000, 31.217494, 7.884258, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {19.421258, 1.276384, 0.000000, 0.990551, 0.990551};
//+
c0 = 0.09905509411536767;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.150835, 0.040528, 0.000000, 0.915931, 0.915931};
//+
c1 = 0.09159312437704217;
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
