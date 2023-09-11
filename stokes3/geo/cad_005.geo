//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.861707, -3.229928, 0.000000, 36.184011, 7.614561, 1.000000};
//+
l = [0.7173616215824482, 0.7173616215824482, 0.7173616215824482, 3.7240846306411903, 3.7240846306411903, 3.7240846306411903, 3.7240846306411903, 0.9081011542945426, 0.9081011542945426, 0.9081011542945426];
//+
MeshSize {1} = 0.717362;
//+
MeshSize {2} = 0.717362;
//+
MeshSize {3} = 0.717362;
//+
MeshSize {4} = 3.724085;
//+
MeshSize {5} = 3.724085;
//+
MeshSize {6} = 3.724085;
//+
MeshSize {7} = 3.724085;
//+
MeshSize {8} = 0.908101;
//+
Cylinder(2) = {8.442655, -1.603718, 0.000000, 0.000000, 0.000000, 1.000000, 0.579792, 2*Pi};
//+
c0 = 0.057979197692362754;
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
