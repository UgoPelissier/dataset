//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.861707, -3.229928, 0.000000, 36.184011, 7.614561, 0.000000};
//+
l = [0.7173616215824482, 3.7240846306411903, 3.7240846306411903, 0.9081011542945426];
//+
MeshSize {1} = 0.717362;
//+
MeshSize {2} = 3.724085;
//+
MeshSize {3} = 3.724085;
//+
MeshSize {4} = 0.908101;
//+
Disk(2) = {8.442655, -1.603718, 0.000000, 0.579792, 0.579792};
//+
c0 = 0.057979197692362754;
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
