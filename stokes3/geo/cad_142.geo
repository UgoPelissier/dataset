//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.565857, -3.552239, 0.000000, 30.387762, 8.820398, 1.000000};
//+
MeshSize {1} = 3.126622;
//+
MeshSize {2} = 3.126622;
//+
MeshSize {3} = 3.126622;
//+
MeshSize {4} = 3.126622;
//+
MeshSize {5} = 0.427469;
//+
MeshSize {6} = 0.427469;
//+
MeshSize {7} = 0.594895;
//+
MeshSize {8} = 0.594895;
//+
Cylinder(2) = {27.473017, -0.216097, 0.000000, 0.000000, 0.000000, 1.000000, 0.546562, 2*Pi};
//+
MeshSize {9} = 0.054656;
//+
MeshSize {10} = 0.054656;
//+
Cylinder(3) = {23.284998, 1.876199, 0.000000, 0.000000, 0.000000, 1.000000, 0.898296, 2*Pi};
//+
MeshSize {11} = 0.089830;
//+
MeshSize {12} = 0.089830;
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
Save "../geo_unrolled/cad_142.geo_unrolled";
