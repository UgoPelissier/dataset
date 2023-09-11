//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.554152, -4.154135, 0.000000, 34.147199, 9.089177, 1.000000};
//+
l = [3.499767178833477, 3.499767178833477, 0.6601759963634242, 0.6601759963634242, 0.6601759963634242, 0.8468762531311076, 0.8468762531311076, 0.8468762531311076, 3.499767178833477, 3.499767178833477];
//+
MeshSize {1} = 3.499767;
//+
MeshSize {2} = 3.499767;
//+
MeshSize {3} = 0.660176;
//+
MeshSize {4} = 0.660176;
//+
MeshSize {5} = 0.660176;
//+
MeshSize {6} = 0.846876;
//+
MeshSize {7} = 0.846876;
//+
MeshSize {8} = 0.846876;
//+
Cylinder(2) = {27.362710, -1.410618, 0.000000, 0.000000, 0.000000, 1.000000, 1.232941, 2*Pi};
//+
c0 = 0.12329410214506416;
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
