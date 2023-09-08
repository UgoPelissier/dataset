//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.554152, -4.154135, 0.000000, 34.147199, 9.089177, 0.000000};
//+
l = [3.499767178833477, 0.6601759963634242, 0.8468762531311076, 3.499767178833477];
//+
MeshSize {1} = 3.499767;
//+
MeshSize {2} = 0.660176;
//+
MeshSize {3} = 0.846876;
//+
MeshSize {4} = 3.499767;
//+
Disk(2) = {27.362710, -1.410618, 0.000000, 1.232941, 1.232941};
//+
c0 = 0.12329410214506416;
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
