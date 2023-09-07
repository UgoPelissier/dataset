//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.236154, -4.250967, 0.000000, 30.542790, 9.827158, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
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
