//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.150861, -4.812035, 0.000000, 30.884158, 9.747817, 1.000000};
//+
l = [1.156678007131448, 1.156678007131448, 1.156678007131448, 3.141540027919746, 3.141540027919746, 3.141540027919746, 3.141540027919746, 0.9881960141670337, 0.9881960141670337, 0.9881960141670337];
//+
MeshSize {1} = 1.156678;
//+
MeshSize {2} = 1.156678;
//+
MeshSize {3} = 1.156678;
//+
MeshSize {4} = 3.141540;
//+
MeshSize {5} = 3.141540;
//+
MeshSize {6} = 3.141540;
//+
MeshSize {7} = 3.141540;
//+
MeshSize {8} = 0.988196;
//+
Cylinder(2) = {10.658598, 2.089109, 0.000000, 0.000000, 0.000000, 1.000000, 1.004549, 2*Pi};
//+
c0 = 0.10045490015009576;
//+
MeshSize {9, 10} = c0;
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
