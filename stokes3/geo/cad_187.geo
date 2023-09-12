//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.164375, -3.953851, 0.000000, 33.900751, 8.839811, 1.000000};
//+
MeshSize {1} = 3.435067;
//+
MeshSize {2} = 3.435067;
//+
MeshSize {3} = 1.149748;
//+
MeshSize {4} = 1.149748;
//+
MeshSize {5} = 0.255697;
//+
MeshSize {6} = 0.255697;
//+
MeshSize {7} = 1.149748;
//+
MeshSize {8} = 1.149748;
//+
Cylinder(2) = {23.370544, 2.885197, 0.000000, 0.000000, 0.000000, 1.000000, 1.196878, 2*Pi};
//+
MeshSize {9} = 0.119688;
//+
MeshSize {10} = 0.119688;
//+
Cylinder(3) = {3.107179, -2.225698, 0.000000, 0.000000, 0.000000, 1.000000, 0.855743, 2*Pi};
//+
MeshSize {11} = 0.085574;
//+
MeshSize {12} = 0.085574;
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
//+
Save "../geo_unrolled/cad_187.geo_unrolled";
