//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.720840, -3.820594, 0.000000, 33.794709, 8.071234, 1.000000};
//+
l = [1.0589529442351102, 1.0589529442351102, 1.0589529442351102, 3.475067392302576, 3.475067392302576, 3.475067392302576, 3.475067392302576, 1.09964653223391, 1.09964653223391, 1.09964653223391];
//+
MeshSize {1} = 1.058953;
//+
MeshSize {2} = 1.058953;
//+
MeshSize {3} = 1.058953;
//+
MeshSize {4} = 3.475067;
//+
MeshSize {5} = 3.475067;
//+
MeshSize {6} = 3.475067;
//+
MeshSize {7} = 3.475067;
//+
MeshSize {8} = 1.099647;
//+
Cylinder(2) = {11.698411, -0.375321, 0.000000, 0.000000, 0.000000, 1.000000, 0.915990, 2*Pi};
//+
c0 = 0.09159896502614953;
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
