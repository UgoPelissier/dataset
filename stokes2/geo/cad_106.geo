//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.746559, -4.614901, 0.000000, 30.405138, 9.907233, 0.000000};
//+
l = [3.154309034004795, 0.5626591080045988, 0.7704281298965925, 3.154309034004795];
//+
MeshSize {1} = 3.154309;
//+
MeshSize {2} = 0.562659;
//+
MeshSize {3} = 0.770428;
//+
MeshSize {4} = 3.154309;
//+
Disk(2) = {25.064271, -1.329798, 0.000000, 1.290682, 1.290682};
//+
c0 = 0.12906819685889376;
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
