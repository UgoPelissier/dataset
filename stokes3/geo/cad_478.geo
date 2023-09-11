//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.856441, -4.744964, 0.000000, 35.707505, 9.749743, 1.000000};
//+
MeshSize {1} = 3.688748;
//+
MeshSize {2} = 3.688748;
//+
MeshSize {3} = 0.510655;
//+
MeshSize {4} = 0.510655;
//+
MeshSize {5} = 3.688748;
//+
MeshSize {6} = 3.688748;
//+
MeshSize {7} = 1.040452;
//+
MeshSize {8} = 1.040452;
//+
Cylinder(2) = {25.435842, -2.404913, 0.000000, 0.000000, 0.000000, 1.000000, 0.966956, 2*Pi};
//+
MeshSize {9} = 0.096696;
//+
MeshSize {10} = 0.096696;
//+
Cylinder(3) = {34.230511, 1.353074, 0.000000, 0.000000, 0.000000, 1.000000, 1.422695, 2*Pi};
//+
MeshSize {11} = 0.142270;
//+
MeshSize {12} = 0.142270;
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
