//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.740541, -3.619321, 0.000000, 31.602852, 8.043173, 0.000000};
//+
l = [0.9358964869414503, 3.2592456411201214, 3.2592456411201214, 0.7587281057356506];
//+
MeshSize {1} = 0.935896;
//+
MeshSize {2} = 3.259246;
//+
MeshSize {3} = 3.259246;
//+
MeshSize {4} = 0.758728;
//+
Disk(2) = {9.355761, 2.539924, 0.000000, 1.231517, 1.231517};
//+
c0 = 0.12315174831160183;
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
