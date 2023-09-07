//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.063792, -2.904265, 0.000000, 35.420545, 7.565912, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {14.087726, 2.004939, 0.000000, 0.583251, 0.583251};
//+
c0 = 0.05832512013906867;
//+
MeshSize {5} = c0;
//+
Disk(3) = {31.420363, -1.442285, 0.000000, 0.747397, 0.747397};
//+
c1 = 0.07473965193151923;
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
