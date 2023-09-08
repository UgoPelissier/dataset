//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.745804, -3.602350, 0.000000, 29.707094, 8.361322, 0.000000};
//+
l = [0.6823630828248765, 3.0738525100473106, 3.0738525100473106, 0.12347070074316467];
//+
MeshSize {1} = 0.682363;
//+
MeshSize {2} = 3.073853;
//+
MeshSize {3} = 3.073853;
//+
MeshSize {4} = 0.123471;
//+
Disk(2) = {2.101833, 3.626937, 0.000000, 0.531735, 0.531735};
//+
c0 = 0.053173487102307904;
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
