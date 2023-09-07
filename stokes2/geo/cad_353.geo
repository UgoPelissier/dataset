//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.682659, -4.205332, 0.000000, 31.055292, 8.784617, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {11.971499, -0.628031, 0.000000, 1.056599, 1.056599};
//+
c0 = 0.10565986205953332;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.128045, 0.737785, 0.000000, 0.755016, 0.755016};
//+
c1 = 0.0755016148132422;
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
