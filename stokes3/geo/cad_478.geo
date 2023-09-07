//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.856441, -4.744964, 0.000000, 35.707505, 9.749743, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {25.435842, -2.404913, 0.000000, 0.000000, 0.000000, 1.000000, 0.966956, 2*Pi};
//+
c0 = 0.09669555772876579;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {34.230511, 1.353074, 0.000000, 0.000000, 0.000000, 1.000000, 1.422695, 2*Pi};
//+
c1 = 0.1422695390844698;
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
