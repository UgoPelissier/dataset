//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.287630, -3.588829, 0.000000, 33.176005, 8.605940, 1.000000};
//+
l = [0.826503228221994, 0.826503228221994, 0.826503228221994, 3.373915275864695, 3.373915275864695, 3.373915275864695, 3.373915275864695, 0.9085652569903477, 0.9085652569903477, 0.9085652569903477];
//+
MeshSize {1} = 0.826503;
//+
MeshSize {2} = 0.826503;
//+
MeshSize {3} = 0.826503;
//+
MeshSize {4} = 3.373915;
//+
MeshSize {5} = 3.373915;
//+
MeshSize {6} = 3.373915;
//+
MeshSize {7} = 3.373915;
//+
MeshSize {8} = 0.908565;
//+
Cylinder(2) = {8.581548, -0.180043, 0.000000, 0.000000, 0.000000, 1.000000, 0.702068, 2*Pi};
//+
c0 = 0.07020680072005965;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
