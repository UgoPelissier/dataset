//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.201707, -3.450624, 0.000000, 37.837392, 8.215016, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {15.030888, 0.707150, 0.000000, 1.017743, 1.017743};
//+
c0 = 0.10177427009892948;
//+
MeshSize {5} = c0;
//+
Disk(3) = {10.821887, 2.709023, 0.000000, 1.415009, 1.415009};
//+
c1 = 0.1415008973948154;
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
