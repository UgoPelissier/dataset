//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.021488, -3.919570, 0.000000, 35.272665, 8.333924, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {12.420474, 1.043665, 0.000000, 0.736205, 0.736205};
//+
c0 = 0.07362047657072128;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.026878, -2.163813, 0.000000, 0.652749, 0.652749};
//+
c1 = 0.06527491541688517;
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
