//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.654343, -4.295210, 0.000000, 37.077167, 9.372727, 1.000000};
//+
MeshSize {1} = 3.802143;
//+
MeshSize {2} = 3.802143;
//+
MeshSize {3} = 1.056473;
//+
MeshSize {4} = 1.056473;
//+
MeshSize {5} = 1.284015;
//+
MeshSize {6} = 1.284015;
//+
MeshSize {7} = 1.056473;
//+
MeshSize {8} = 1.056473;
//+
Cylinder(2) = {27.706756, 0.831589, 0.000000, 0.000000, 0.000000, 1.000000, 0.694926, 2*Pi};
//+
MeshSize {9} = 0.069493;
//+
MeshSize {10} = 0.069493;
//+
Cylinder(3) = {12.730861, 1.783427, 0.000000, 0.000000, 0.000000, 1.000000, 0.679917, 2*Pi};
//+
MeshSize {11} = 0.067992;
//+
MeshSize {12} = 0.067992;
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
