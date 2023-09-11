//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.873135, -4.547837, 0.000000, 33.594345, 9.259415, 1.000000};
//+
l = [0.4892457829403144, 0.4892457829403144, 0.4892457829403144, 3.477702337782453, 3.477702337782453, 3.477702337782453, 3.477702337782453, 0.3939505659147813, 0.3939505659147813, 0.3939505659147813];
//+
MeshSize {1} = 0.489246;
//+
MeshSize {2} = 0.489246;
//+
MeshSize {3} = 0.489246;
//+
MeshSize {4} = 3.477702;
//+
MeshSize {5} = 3.477702;
//+
MeshSize {6} = 3.477702;
//+
MeshSize {7} = 3.477702;
//+
MeshSize {8} = 0.393951;
//+
Cylinder(2) = {2.692004, 0.594165, 0.000000, 0.000000, 0.000000, 1.000000, 0.561758, 2*Pi};
//+
c0 = 0.056175804755668385;
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
