//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.234144, -3.095873, 0.000000, 36.802837, 7.502716, 0.000000};
//+
l = [0.5543328176069886, 0.5543328176069886, 3.722647717574347, 1.200716410470023, 3.722647717574347, 1.2619596322447717, 0.6050907096980654, 0.6050907096980654];
//+
MeshSize {1} = 0.554333;
//+
MeshSize {2} = 0.554333;
//+
MeshSize {3} = 3.722648;
//+
MeshSize {4} = 1.200716;
//+
Disk(2) = {5.290846, 0.228895, 0.000000, 0.508475, 0.508475};
//+
c0 = 0.05084747419530096;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.074786, -0.449417, 0.000000, 1.222432, 1.222432};
//+
c1 = 0.12224320263643224;
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
