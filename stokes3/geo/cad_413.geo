//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.166809, -3.991495, 0.000000, 33.848762, 8.343782, 1.000000};
//+
MeshSize {1} = 1.057736;
//+
MeshSize {2} = 1.057736;
//+
MeshSize {3} = 3.427045;
//+
MeshSize {4} = 3.427045;
//+
MeshSize {5} = 1.057736;
//+
MeshSize {6} = 1.057736;
//+
MeshSize {7} = 3.427045;
//+
MeshSize {8} = 3.427045;
//+
Cylinder(2) = {11.984505, -1.542306, 0.000000, 0.000000, 0.000000, 1.000000, 1.491463, 2*Pi};
//+
MeshSize {9} = 0.149146;
//+
MeshSize {10} = 0.149146;
//+
Cylinder(3) = {14.646699, 1.884591, 0.000000, 0.000000, 0.000000, 1.000000, 1.108413, 2*Pi};
//+
MeshSize {11} = 0.110841;
//+
MeshSize {12} = 0.110841;
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
