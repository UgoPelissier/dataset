//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.770766, -4.906193, 0.000000, 34.732760, 9.822749, 0.000000};
//+
l = [1.0970369235694202, 3.584162293475845, 3.584162293475845, 0.9779999672725481];
//+
MeshSize {1} = 1.097037;
//+
MeshSize {2} = 3.584162;
//+
MeshSize {3} = 3.584162;
//+
MeshSize {4} = 0.978000;
//+
Disk(2) = {11.402586, 1.433119, 0.000000, 1.407937, 1.407937};
//+
c0 = 0.14079369587356225;
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
