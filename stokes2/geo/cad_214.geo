//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.895118, -3.193213, 0.000000, 32.214661, 7.793539, 0.000000};
//+
l = [3.33383009678941, 0.8352485668931723, 0.8250579732296185, 3.33383009678941];
//+
MeshSize {1} = 3.333830;
//+
MeshSize {2} = 0.835249;
//+
MeshSize {3} = 0.825058;
//+
MeshSize {4} = 3.333830;
//+
Disk(2) = {24.757336, 0.824081, 0.000000, 0.915846, 0.915846};
//+
c0 = 0.09158456154312247;
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
