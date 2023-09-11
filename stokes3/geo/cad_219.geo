//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.456798, -4.700907, 0.000000, 34.166985, 9.517288, 1.000000};
//+
l = [3.4949263908396846, 3.4949263908396846, 0.8958078642336889, 0.8958078642336889, 0.8958078642336889, 0.9886880105370063, 0.9886880105370063, 0.9886880105370063, 3.4949263908396846, 3.4949263908396846];
//+
MeshSize {1} = 3.494926;
//+
MeshSize {2} = 3.494926;
//+
MeshSize {3} = 0.895808;
//+
MeshSize {4} = 0.895808;
//+
MeshSize {5} = 0.895808;
//+
MeshSize {6} = 0.988688;
//+
MeshSize {7} = 0.988688;
//+
MeshSize {8} = 0.988688;
//+
Cylinder(2) = {25.042693, -0.990286, 0.000000, 0.000000, 0.000000, 1.000000, 1.316453, 2*Pi};
//+
c0 = 0.13164532259331305;
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
