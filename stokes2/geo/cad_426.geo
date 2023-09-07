//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.867410, -3.576465, 0.000000, 31.444276, 8.451753, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {28.006889, 0.266743, 0.000000, 0.686417, 0.686417};
//+
c0 = 0.0686417387417519;
//+
MeshSize {5} = c0;
//+
Disk(3) = {16.176872, -0.355090, 0.000000, 1.426350, 1.426350};
//+
c1 = 0.14263499730264337;
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
