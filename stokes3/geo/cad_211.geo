//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.186199, -3.723109, 0.000000, 37.721478, 8.919453, 1.000000};
//+
MeshSize {1} = 3.816911;
//+
MeshSize {2} = 3.816911;
//+
MeshSize {3} = 0.668652;
//+
MeshSize {4} = 0.668652;
//+
MeshSize {5} = 0.668652;
//+
MeshSize {6} = 0.350465;
//+
MeshSize {7} = 0.350465;
//+
MeshSize {8} = 0.350465;
//+
Cylinder(2) = {34.004807, 2.916570, 0.000000, 0.000000, 0.000000, 1.000000, 1.015281, 2*Pi};
//+
MeshSize {9} = 0.101528;
//+
MeshSize {10} = 0.101528;
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
