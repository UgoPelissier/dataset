//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.026670, -3.991466, 0.000000, 34.993401, 8.089445, 0.000000};
//+
l = [3.5252874549249213, 0.7525274356682448, 0.58305248921066, 3.5252874549249213];
//+
MeshSize {1} = 3.525287;
//+
MeshSize {2} = 0.752527;
//+
MeshSize {3} = 0.583052;
//+
MeshSize {4} = 3.525287;
//+
Disk(2) = {29.058310, 1.586114, 0.000000, 0.638793, 0.638793};
//+
c0 = 0.06387926918181862;
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
