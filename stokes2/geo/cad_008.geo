//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.379455, -3.456664, 0.000000, 36.020542, 8.892374, 0.000000};
//+
l = [3.6670538659949856, 1.1919149516401024, 1.0449563037417802, 3.6670538659949856];
//+
MeshSize {1} = 3.667054;
//+
MeshSize {2} = 1.191915;
//+
MeshSize {3} = 1.044956;
//+
MeshSize {4} = 3.667054;
//+
Disk(2) = {24.919957, 3.048768, 0.000000, 1.276000, 1.276000};
//+
c0 = 0.12759999115462448;
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
