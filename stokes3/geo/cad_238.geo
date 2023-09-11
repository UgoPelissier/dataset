//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.329865, -3.994287, 0.000000, 38.003762, 8.748254, 1.000000};
//+
MeshSize {1} = 3.858238;
//+
MeshSize {2} = 3.858238;
//+
MeshSize {3} = 3.858238;
//+
MeshSize {4} = 3.858238;
//+
MeshSize {5} = 1.362282;
//+
MeshSize {6} = 1.362282;
//+
MeshSize {7} = 1.284933;
//+
MeshSize {8} = 1.284933;
//+
Cylinder(2) = {25.093498, 1.617085, 0.000000, 0.000000, 0.000000, 1.000000, 0.757327, 2*Pi};
//+
MeshSize {9} = 0.075733;
//+
MeshSize {10} = 0.075733;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
