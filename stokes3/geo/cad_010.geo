//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.000572, -4.587217, 0.000000, 30.194196, 9.822747, 1.000000};
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
Cylinder(2) = {26.532803, 3.257866, 0.000000, 0.000000, 0.000000, 1.000000, 0.807514, 2*Pi};
//+
MeshSize {9} = 0.080751;
//+
MeshSize {10} = 0.080751;
//+
Cylinder(3) = {2.586286, -0.137612, 0.000000, 0.000000, 0.000000, 1.000000, 0.569213, 2*Pi};
//+
MeshSize {11} = 0.056921;
//+
MeshSize {12} = 0.056921;
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
Save "../geo_unrolled/cad_010.geo_unrolled";
