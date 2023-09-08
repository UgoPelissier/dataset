//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.015646, -3.585889, 0.000000, 30.993321, 7.583941, 0.000000};
//+
l = [3.1239959693024915, 1.29364977756906, 1.216317848398943, 3.1239959693024915];
//+
MeshSize {1} = 3.123996;
//+
MeshSize {2} = 1.293650;
//+
MeshSize {3} = 1.216318;
//+
MeshSize {4} = 3.123996;
//+
Disk(2) = {18.536692, 1.541711, 0.000000, 0.548676, 0.548676};
//+
c0 = 0.05486763212437491;
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
