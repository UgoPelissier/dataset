//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.789859, -4.171332, 0.000000, 33.853099, 9.083506, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {27.523094, 2.613251, 0.000000, 0.580959, 0.580959};
//+
c0 = 0.058095904156904826;
//+
MeshSize {5} = c0;
//+
Disk(3) = {30.515154, 2.141534, 0.000000, 0.554812, 0.554812};
//+
c1 = 0.05548116752113139;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
