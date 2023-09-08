//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.720840, -3.820594, 0.000000, 33.794709, 8.071234, 0.000000};
//+
l = [1.0589529442351102, 3.475067392302576, 3.475067392302576, 1.09964653223391];
//+
MeshSize {1} = 1.058953;
//+
MeshSize {2} = 3.475067;
//+
MeshSize {3} = 3.475067;
//+
MeshSize {4} = 1.099647;
//+
Disk(2) = {11.698411, -0.375321, 0.000000, 0.915990, 0.915990};
//+
c0 = 0.09159896502614953;
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
