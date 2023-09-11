//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.015646, -3.585889, 0.000000, 30.993321, 7.583941, 1.000000};
//+
l = [3.1239959693024915, 3.1239959693024915, 1.29364977756906, 1.29364977756906, 1.29364977756906, 1.216317848398943, 1.216317848398943, 1.216317848398943, 3.1239959693024915, 3.1239959693024915];
//+
MeshSize {1} = 3.123996;
//+
MeshSize {2} = 3.123996;
//+
MeshSize {3} = 1.293650;
//+
MeshSize {4} = 1.293650;
//+
MeshSize {5} = 1.293650;
//+
MeshSize {6} = 1.216318;
//+
MeshSize {7} = 1.216318;
//+
MeshSize {8} = 1.216318;
//+
Cylinder(2) = {18.536692, 1.541711, 0.000000, 0.000000, 0.000000, 1.000000, 0.548676, 2*Pi};
//+
c0 = 0.05486763212437491;
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
