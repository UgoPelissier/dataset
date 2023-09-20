//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.547949, -3.202001, 0.000000, 33.290216, 8.351785, 1.000000};
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
Cylinder(2) = {27.541414, 0.759764, 0.000000, 0.000000, 0.000000, 1.000000, 1.284314, 2*Pi};
//+
MeshSize {9} = 0.128431;
//+
MeshSize {10} = 0.128431;
//+
Cylinder(3) = {14.731570, 2.399692, 0.000000, 0.000000, 0.000000, 1.000000, 1.044527, 2*Pi};
//+
MeshSize {11} = 0.104453;
//+
MeshSize {12} = 0.104453;
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
Save "../geo_unrolled/cad_352.geo_unrolled";
