//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.685493, -3.392459, 0.000000, 38.194801, 8.383989, 0.000000};
//+
l = [3.9105627892259527, 3.9105627892259527, 0.14192146811220813, 0.14192146811220813, 0.6402374973260465, 0.6402374973260465, 3.9105627892259527, 3.9105627892259527];
//+
MeshSize {1} = 3.910563;
//+
MeshSize {2} = 3.910563;
//+
MeshSize {3} = 0.141921;
//+
MeshSize {4} = 0.141921;
//+
Disk(2) = {37.698851, -1.840621, 0.000000, 0.531173, 0.531173};
//+
c0 = 0.05311731646891863;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.199934, -0.925875, 0.000000, 1.095192, 1.095192};
//+
c1 = 0.10951918670299994;
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
