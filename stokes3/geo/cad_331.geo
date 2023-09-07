//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.153127, -3.431204, 0.000000, 36.149986, 8.252791, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {24.020484, 1.340938, 0.000000, 0.000000, 0.000000, 1.000000, 0.769977, 2*Pi};
//+
c0 = 0.07699771495371892;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {3.808713, 1.805432, 0.000000, 0.000000, 0.000000, 1.000000, 0.617735, 2*Pi};
//+
c1 = 0.06177345684372393;
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
