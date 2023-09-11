//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.705495, -3.838321, 0.000000, 37.844495, 9.148207, 1.000000};
//+
MeshSize {1} = 3.882041;
//+
MeshSize {2} = 3.882041;
//+
MeshSize {3} = 0.908337;
//+
MeshSize {4} = 0.908337;
//+
MeshSize {5} = 1.187221;
//+
MeshSize {6} = 1.187221;
//+
MeshSize {7} = 0.908337;
//+
MeshSize {8} = 0.908337;
//+
Cylinder(2) = {28.828229, -0.488561, 0.000000, 0.000000, 0.000000, 1.000000, 1.199311, 2*Pi};
//+
MeshSize {9} = 0.119931;
//+
MeshSize {10} = 0.119931;
//+
Cylinder(3) = {13.046775, 0.462682, 0.000000, 0.000000, 0.000000, 1.000000, 1.197057, 2*Pi};
//+
MeshSize {11} = 0.119706;
//+
MeshSize {12} = 0.119706;
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
