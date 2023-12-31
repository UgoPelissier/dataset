//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.166105, -4.802411, 0.000000, 36.859876, 9.909667, 1.000000};
//+
MeshSize {1} = 0.896447;
//+
MeshSize {2} = 0.896447;
//+
MeshSize {3} = 0.827243;
//+
MeshSize {4} = 0.827243;
//+
MeshSize {5} = 1.641691;
//+
MeshSize {6} = 1.641691;
//+
MeshSize {7} = 1.318809;
//+
MeshSize {8} = 1.318809;
//+
Cylinder(2) = {7.454753, 0.688033, 0.000000, 0.000000, 0.000000, 1.000000, 1.333839, 2*Pi};
//+
MeshSize {9} = 0.133384;
//+
MeshSize {10} = 0.133384;
//+
Cylinder(3) = {27.291048, 0.949738, 0.000000, 0.000000, 0.000000, 1.000000, 1.054305, 2*Pi};
//+
MeshSize {11} = 0.105430;
//+
MeshSize {12} = 0.105430;
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
Save "../geo_unrolled/cad_459.geo_unrolled";
