//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.150861, -4.812035, 0.000000, 30.884158, 9.747817, 1.000000};
//+
MeshSize {1} = 1.156678;
//+
MeshSize {2} = 1.156678;
//+
MeshSize {3} = 0.988196;
//+
MeshSize {4} = 0.988196;
//+
MeshSize {5} = 3.141540;
//+
MeshSize {6} = 3.141540;
//+
MeshSize {7} = 3.141540;
//+
MeshSize {8} = 3.141540;
//+
Cylinder(2) = {10.658598, 2.089109, 0.000000, 0.000000, 0.000000, 1.000000, 1.004549, 2*Pi};
//+
MeshSize {9} = 0.100455;
//+
MeshSize {10} = 0.100455;
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
