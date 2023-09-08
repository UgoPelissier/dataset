//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.682659, -4.205332, 0.000000, 31.055292, 8.784617, 0.000000};
//+
l = [1.0785486925187175, 0.5270354893407558, 3.204044207618742, 3.204044207618742, 3.204044207618742, 3.204044207618742, 1.1375378599693808, 0.44051977722496505];
//+
MeshSize {1} = 1.078549;
//+
MeshSize {2} = 0.527035;
//+
MeshSize {3} = 3.204044;
//+
MeshSize {4} = 3.204044;
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
