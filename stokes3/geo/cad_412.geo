//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.625325, -4.090083, 0.000000, 36.866619, 8.537962, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {3.955932, 1.183569, 0.000000, 0.000000, 0.000000, 1.000000, 0.857963, 2*Pi};
//+
c0 = 0.08579633658714038;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {17.198327, 1.410833, 0.000000, 0.000000, 0.000000, 1.000000, 1.382824, 2*Pi};
//+
c1 = 0.1382824019373226;
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
