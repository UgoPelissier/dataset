//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.682659, -4.205332, 0.000000, 31.055292, 8.784617, 1.000000};
//+
l = [1.0785486925187175, 1.0785486925187175, 1.0785486925187175, 0.5270354893407558, 0.5270354893407558, 0.5270354893407558, 3.204044207618742, 3.204044207618742, 3.204044207618742, 3.204044207618742, 3.204044207618742, 3.204044207618742, 3.204044207618742, 3.204044207618742, 1.1375378599693808, 1.1375378599693808, 1.1375378599693808, 0.44051977722496505, 0.44051977722496505, 0.44051977722496505];
//+
MeshSize {1} = 1.078549;
//+
MeshSize {2} = 1.078549;
//+
MeshSize {3} = 1.078549;
//+
MeshSize {4} = 0.527035;
//+
MeshSize {5} = 0.527035;
//+
MeshSize {6} = 0.527035;
//+
MeshSize {7} = 3.204044;
//+
MeshSize {8} = 3.204044;
//+
Cylinder(2) = {11.971499, -0.628031, 0.000000, 0.000000, 0.000000, 1.000000, 1.056599, 2*Pi};
//+
c0 = 0.10565986205953332;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {4.128045, 0.737785, 0.000000, 0.000000, 0.000000, 1.000000, 0.755016, 2*Pi};
//+
c1 = 0.0755016148132422;
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
