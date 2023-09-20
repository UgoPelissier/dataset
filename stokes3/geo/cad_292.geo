//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.737118, -3.689002, 0.000000, 33.046463, 8.157451, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {30.741518, 2.509027, 0.000000, 0.000000, 0.000000, 1.000000, 1.184640, 2*Pi};
//+
MeshSize {9} = 0.118464;
//+
MeshSize {10} = 0.118464;
//+
Cylinder(3) = {9.617403, 1.981664, 0.000000, 0.000000, 0.000000, 1.000000, 1.308809, 2*Pi};
//+
MeshSize {11} = 0.130881;
//+
MeshSize {12} = 0.130881;
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
Save "../geo_unrolled/cad_292.geo_unrolled";
