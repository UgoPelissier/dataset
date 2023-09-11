//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.606261, -4.000829, 0.000000, 32.673398, 9.032670, 1.000000};
//+
l = [0.8358173915775207, 0.8358173915775207, 0.8358173915775207, 3.3584713062681617, 3.3584713062681617, 3.3584713062681617, 3.3584713062681617, 1.0066474947451907, 1.0066474947451907, 1.0066474947451907];
//+
MeshSize {1} = 0.835817;
//+
MeshSize {2} = 0.835817;
//+
MeshSize {3} = 0.835817;
//+
MeshSize {4} = 3.358471;
//+
MeshSize {5} = 3.358471;
//+
MeshSize {6} = 3.358471;
//+
MeshSize {7} = 3.358471;
//+
MeshSize {8} = 1.006647;
//+
Cylinder(2) = {9.958417, -1.477985, 0.000000, 0.000000, 0.000000, 1.000000, 1.328289, 2*Pi};
//+
c0 = 0.1328289385957376;
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
