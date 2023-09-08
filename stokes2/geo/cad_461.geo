//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.236154, -4.250967, 0.000000, 30.542790, 9.827158, 0.000000};
//+
l = [3.1168680669280686, 1.348653822901228, 1.2646071560370449, 1.2646071560370449, 1.3202751598601683, 1.3202751598601683, 3.1168680669280686, 1.3566788346111467];
//+
MeshSize {1} = 3.116868;
//+
MeshSize {2} = 1.348654;
//+
MeshSize {3} = 1.264607;
//+
MeshSize {4} = 1.264607;
//+
Disk(2) = {17.672909, -0.131386, 0.000000, 1.092163, 1.092163};
//+
c0 = 0.1092163135082092;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.247833, 0.541356, 0.000000, 1.322023, 1.322023};
//+
c1 = 0.1322023052314045;
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
