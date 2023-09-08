//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.229048, -4.052576, 0.000000, 32.925482, 8.169352, 0.000000};
//+
l = [1.0613000502916827, 3.3405201244555354, 3.3405201244555354, 0.9698029738198053];
//+
MeshSize {1} = 1.061300;
//+
MeshSize {2} = 3.340520;
//+
MeshSize {3} = 3.340520;
//+
MeshSize {4} = 0.969803;
//+
Disk(2) = {10.432997, 1.269833, 0.000000, 0.895632, 0.895632};
//+
c0 = 0.08956319010606643;
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
