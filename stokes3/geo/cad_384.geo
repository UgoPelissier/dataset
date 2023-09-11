//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072386, -4.459426, 0.000000, 39.397769, 9.507356, 1.000000};
//+
MeshSize {1} = 3.975538;
//+
MeshSize {2} = 3.975538;
//+
MeshSize {3} = 3.975538;
//+
MeshSize {4} = 3.975538;
//+
MeshSize {5} = 1.645869;
//+
MeshSize {6} = 1.645869;
//+
MeshSize {7} = 1.645869;
//+
MeshSize {8} = 0.338563;
//+
Cylinder(2) = {22.691150, 1.846251, 0.000000, 0.000000, 0.000000, 1.000000, 1.466055, 2*Pi};
//+
MeshSize {9} = 0.146606;
//+
MeshSize {10} = 0.146606;
//+
Cylinder(3) = {37.940241, -0.391243, 0.000000, 0.000000, 0.000000, 1.000000, 0.960720, 2*Pi};
//+
MeshSize {11} = 0.096072;
//+
MeshSize {12} = 0.096072;
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
