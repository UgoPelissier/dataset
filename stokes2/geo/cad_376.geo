//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.370377, -3.993420, 0.000000, 34.927788, 8.073716, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {28.319725, 2.337789, 0.000000, 0.881236, 0.881236};
//+
c0 = 0.08812364961990551;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.792317, 1.948947, 0.000000, 1.261539, 1.261539};
//+
c1 = 0.1261539227047492;
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
