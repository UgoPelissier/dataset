//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.873135, -4.547837, 0.000000, 33.594345, 9.259415, 0.000000};
//+
l = [0.4892457829403144, 3.477702337782453, 3.477702337782453, 0.3939505659147813];
//+
MeshSize {1} = 0.489246;
//+
MeshSize {2} = 3.477702;
//+
MeshSize {3} = 3.477702;
//+
MeshSize {4} = 0.393951;
//+
Disk(2) = {2.692004, 0.594165, 0.000000, 0.561758, 0.561758};
//+
c0 = 0.056175804755668385;
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
