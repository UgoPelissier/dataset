//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.063792, -2.904265, 0.000000, 35.420545, 7.565912, 0.000000};
//+
l = [1.427511375908118, 1.427511375908118, 3.568541663756942, 0.3571547150979384, 3.568541663756942, 0.658567067140222, 1.369010919979777, 1.369010919979777];
//+
MeshSize {1} = 1.427511;
//+
MeshSize {2} = 1.427511;
//+
MeshSize {3} = 3.568542;
//+
MeshSize {4} = 0.357155;
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
