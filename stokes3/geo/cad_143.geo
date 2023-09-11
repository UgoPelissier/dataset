//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.791818, -3.866393, 0.000000, 33.705519, 9.524540, 1.000000};
//+
MeshSize {1} = 3.482450;
//+
MeshSize {2} = 3.482450;
//+
MeshSize {3} = 3.482450;
//+
MeshSize {4} = 3.482450;
//+
MeshSize {5} = 1.122889;
//+
MeshSize {6} = 1.122889;
//+
MeshSize {7} = 1.310972;
//+
MeshSize {8} = 1.310972;
//+
Cylinder(2) = {22.486656, -1.699875, 0.000000, 0.000000, 0.000000, 1.000000, 0.975629, 2*Pi};
//+
MeshSize {9} = 0.097563;
//+
MeshSize {10} = 0.097563;
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
