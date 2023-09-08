//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.276968, -4.415761, 0.000000, 35.256999, 9.000020, 0.000000};
//+
l = [3.5817772833947874, 3.5817772833947874, 1.4378889174385798, 0.7156748216191787, 1.2906627643100745, 0.5458605425556907, 3.5817772833947874, 3.5817772833947874];
//+
MeshSize {1} = 3.581777;
//+
MeshSize {2} = 3.581777;
//+
MeshSize {3} = 1.437889;
//+
MeshSize {4} = 0.715675;
//+
Disk(2) = {21.590193, 2.510732, 0.000000, 1.190476, 1.190476};
//+
c0 = 0.1190476075014654;
//+
MeshSize {5} = c0;
//+
Disk(3) = {30.128969, 1.425651, 0.000000, 0.801649, 0.801649};
//+
c1 = 0.08016493335771986;
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
