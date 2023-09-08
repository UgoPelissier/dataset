//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.220217, -3.965184, 0.000000, 36.090812, 8.072354, 0.000000};
//+
l = [3.6534662927959674, 0.710819088200813, 0.3068396491279375, 3.6534662927959674];
//+
MeshSize {1} = 3.653466;
//+
MeshSize {2} = 0.710819;
//+
MeshSize {3} = 0.306840;
//+
MeshSize {4} = 3.653466;
//+
Disk(2) = {32.876733, 2.903104, 0.000000, 0.570857, 0.570857};
//+
c0 = 0.05708573498886535;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
