//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.606261, -4.000829, 0.000000, 32.673398, 9.032670, 0.000000};
//+
l = [0.8358173915775207, 3.3584713062681617, 3.3584713062681617, 1.0066474947451907];
//+
MeshSize {1} = 0.835817;
//+
MeshSize {2} = 3.358471;
//+
MeshSize {3} = 3.358471;
//+
MeshSize {4} = 1.006647;
//+
Disk(2) = {9.958417, -1.477985, 0.000000, 1.328289, 1.328289};
//+
c0 = 0.1328289385957376;
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
