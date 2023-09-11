//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.935308, -3.546600, 0.000000, 33.894011, 8.770832, 1.000000};
//+
MeshSize {1} = 3.510432;
//+
MeshSize {2} = 3.510432;
//+
MeshSize {3} = 1.452706;
//+
MeshSize {4} = 1.452706;
//+
MeshSize {5} = 1.319948;
//+
MeshSize {6} = 1.319948;
//+
MeshSize {7} = 1.452706;
//+
MeshSize {8} = 1.452706;
//+
Cylinder(2) = {20.916609, 3.356561, 0.000000, 0.000000, 0.000000, 1.000000, 1.004110, 2*Pi};
//+
MeshSize {9} = 0.100411;
//+
MeshSize {10} = 0.100411;
//+
Cylinder(3) = {14.375644, 1.754292, 0.000000, 0.000000, 0.000000, 1.000000, 1.248427, 2*Pi};
//+
MeshSize {11} = 0.124843;
//+
MeshSize {12} = 0.124843;
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
