//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.751138, -3.326117, 0.000000, 31.495269, 7.997825, 0.000000};
//+
l = [0.31520553872031276, 3.249341537897253, 3.249341537897253, 0.5239434271569342];
//+
MeshSize {1} = 0.315206;
//+
MeshSize {2} = 3.249342;
//+
MeshSize {3} = 3.249342;
//+
MeshSize {4} = 0.523943;
//+
Disk(2) = {3.437057, -0.598668, 0.000000, 0.675887, 0.675887};
//+
c0 = 0.06758866817065316;
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
