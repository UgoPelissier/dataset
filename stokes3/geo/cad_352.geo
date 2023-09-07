//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.911486, -3.989256, 0.000000, 35.564837, 9.387769, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {19.938511, 0.970573, 0.000000, 0.000000, 0.000000, 1.000000, 1.276147, 2*Pi};
//+
c0 = 0.1276146745122332;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {35.173748, -1.932212, 0.000000, 0.000000, 0.000000, 1.000000, 0.677426, 2*Pi};
//+
c1 = 0.06774258984882632;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
