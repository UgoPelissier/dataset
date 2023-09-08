//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.287630, -3.588829, 0.000000, 33.176005, 8.605940, 0.000000};
//+
l = [0.826503228221994, 3.373915275864695, 3.373915275864695, 0.9085652569903477];
//+
MeshSize {1} = 0.826503;
//+
MeshSize {2} = 3.373915;
//+
MeshSize {3} = 3.373915;
//+
MeshSize {4} = 0.908565;
//+
Disk(2) = {8.581548, -0.180043, 0.000000, 0.702068, 0.702068};
//+
c0 = 0.07020680072005965;
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
