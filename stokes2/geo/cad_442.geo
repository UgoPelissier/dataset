//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.787308, -4.296289, 0.000000, 33.766071, 8.947416, 0.000000};
//+
l = [1.1804844742846907, 1.1804844742846907, 3.484178543991525, 3.484178543991525, 3.484178543991525, 3.484178543991525, 1.2685153753704952, 1.2685153753704952];
//+
MeshSize {1} = 1.180484;
//+
MeshSize {2} = 1.180484;
//+
MeshSize {3} = 3.484179;
//+
MeshSize {4} = 3.484179;
//+
Disk(2) = {12.735319, -1.083180, 0.000000, 0.567667, 0.567667};
//+
c0 = 0.05676666778209954;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.765482, 0.451586, 0.000000, 0.792833, 0.792833};
//+
c1 = 0.07928327133567396;
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
