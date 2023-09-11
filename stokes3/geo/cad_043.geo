//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.000406, -4.188067, 0.000000, 34.298476, 8.949962, 1.000000};
//+
MeshSize {1} = 3.458958;
//+
MeshSize {2} = 3.458958;
//+
MeshSize {3} = 3.458958;
//+
MeshSize {4} = 3.458958;
//+
MeshSize {5} = 1.151878;
//+
MeshSize {6} = 1.151878;
//+
MeshSize {7} = 1.194271;
//+
MeshSize {8} = 1.194271;
//+
Cylinder(2) = {22.455671, -0.313354, 0.000000, 0.000000, 0.000000, 1.000000, 0.942160, 2*Pi};
//+
MeshSize {9} = 0.094216;
//+
MeshSize {10} = 0.094216;
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
