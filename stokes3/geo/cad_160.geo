//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.727235, -3.582355, 0.000000, 30.384634, 8.220254, 1.000000};
//+
l = [3.138218462306113, 3.138218462306113, 0.6568823804627137, 0.6568823804627137, 0.6568823804627137, 0.7514445029820069, 0.7514445029820069, 0.7514445029820069, 3.138218462306113, 3.138218462306113];
//+
MeshSize {1} = 3.138218;
//+
MeshSize {2} = 3.138218;
//+
MeshSize {3} = 0.656882;
//+
MeshSize {4} = 0.656882;
//+
MeshSize {5} = 0.656882;
//+
MeshSize {6} = 0.751445;
//+
MeshSize {7} = 0.751445;
//+
MeshSize {8} = 0.751445;
//+
Cylinder(2) = {24.699685, -0.352537, 0.000000, 0.000000, 0.000000, 1.000000, 0.610858, 2*Pi};
//+
c0 = 0.061085789529001504;
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
