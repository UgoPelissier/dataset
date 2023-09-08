//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.561673, -4.046065, 0.000000, 32.041225, 8.615683, 0.000000};
//+
l = [0.4721114140918771, 3.2886265166870405, 3.2886265166870405, 0.24367558650729673];
//+
MeshSize {1} = 0.472111;
//+
MeshSize {2} = 3.288627;
//+
MeshSize {3} = 3.288627;
//+
MeshSize {4} = 0.243676;
//+
Disk(2) = {2.862233, 1.567445, 0.000000, 1.345521, 1.345521};
//+
c0 = 0.13455212189746996;
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
