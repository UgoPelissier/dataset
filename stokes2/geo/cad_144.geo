//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.150861, -4.812035, 0.000000, 30.884158, 9.747817, 0.000000};
//+
l = [1.156678007131448, 3.141540027919746, 3.141540027919746, 0.9881960141670337];
//+
MeshSize {1} = 1.156678;
//+
MeshSize {2} = 3.141540;
//+
MeshSize {3} = 3.141540;
//+
MeshSize {4} = 0.988196;
//+
Disk(2) = {10.658598, 2.089109, 0.000000, 1.004549, 1.004549};
//+
c0 = 0.10045490015009576;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
