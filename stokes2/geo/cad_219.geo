//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.456798, -4.700907, 0.000000, 34.166985, 9.517288, 0.000000};
//+
l = [3.4949263908396846, 0.8958078642336889, 0.9886880105370063, 3.4949263908396846];
//+
MeshSize {1} = 3.494926;
//+
MeshSize {2} = 0.895808;
//+
MeshSize {3} = 0.988688;
//+
MeshSize {4} = 3.494926;
//+
Disk(2) = {25.042693, -0.990286, 0.000000, 1.316453, 1.316453};
//+
c0 = 0.13164532259331305;
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
