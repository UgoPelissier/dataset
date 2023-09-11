//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.895118, -3.193213, 0.000000, 32.214661, 7.793539, 1.000000};
//+
l = [3.33383009678941, 3.33383009678941, 0.8352485668931723, 0.8352485668931723, 0.8352485668931723, 0.8250579732296185, 0.8250579732296185, 0.8250579732296185, 3.33383009678941, 3.33383009678941];
//+
MeshSize {1} = 3.333830;
//+
MeshSize {2} = 3.333830;
//+
MeshSize {3} = 0.835249;
//+
MeshSize {4} = 0.835249;
//+
MeshSize {5} = 0.835249;
//+
MeshSize {6} = 0.825058;
//+
MeshSize {7} = 0.825058;
//+
MeshSize {8} = 0.825058;
//+
Cylinder(2) = {24.757336, 0.824081, 0.000000, 0.000000, 0.000000, 1.000000, 0.915846, 2*Pi};
//+
c0 = 0.09158456154312247;
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
