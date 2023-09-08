//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.341357, -3.285096, 0.000000, 39.302980, 8.229959, 0.000000};
//+
l = [3.9857326791492604, 0.8951452971941077, 1.9040203861985514, 1.9040203861985514, 1.868684210167119, 1.868684210167119, 3.9857326791492604, 0.6338426287856518];
//+
MeshSize {1} = 3.985733;
//+
MeshSize {2} = 0.895145;
//+
MeshSize {3} = 1.904020;
//+
MeshSize {4} = 1.904020;
//+
Disk(2) = {20.693753, 1.663242, 0.000000, 0.545778, 0.545778};
//+
c0 = 0.05457781098550343;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.435034, 3.540662, 0.000000, 0.892896, 0.892896};
//+
c1 = 0.08928964899151735;
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
