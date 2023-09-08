//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.430456, -4.377798, 0.000000, 32.156928, 8.776691, 0.000000};
//+
l = [1.6167274539914236, 1.323344805697138, 1.540959203061302, 1.540959203061302, 1.503469904770319, 1.503469904770319, 1.5809213110990872, 1.3806617805809331];
//+
MeshSize {1} = 1.616727;
//+
MeshSize {2} = 1.323345;
//+
MeshSize {3} = 1.540959;
//+
MeshSize {4} = 1.540959;
//+
Disk(2) = {16.906262, 0.706684, 0.000000, 1.075235, 1.075235};
//+
c0 = 0.10752353982704262;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.526757, -0.955482, 0.000000, 1.272342, 1.272342};
//+
c1 = 0.1272342232462432;
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
