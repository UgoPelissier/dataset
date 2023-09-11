//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.966268, -3.106107, 0.000000, 37.046324, 7.845996, 1.000000};
//+
MeshSize {1} = 0.814620;
//+
MeshSize {2} = 0.814620;
//+
MeshSize {3} = 0.790345;
//+
MeshSize {4} = 0.790345;
//+
MeshSize {5} = 3.821449;
//+
MeshSize {6} = 3.821449;
//+
MeshSize {7} = 3.821449;
//+
MeshSize {8} = 3.821449;
//+
Cylinder(2) = {9.503270, 1.107690, 0.000000, 0.000000, 0.000000, 1.000000, 1.374117, 2*Pi};
//+
MeshSize {9} = 0.137412;
//+
MeshSize {10} = 0.137412;
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
