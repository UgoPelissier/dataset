//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.379455, -3.456664, 0.000000, 36.020542, 8.892374, 1.000000};
//+
l = [3.6670538659949856, 3.6670538659949856, 1.1919149516401024, 1.1919149516401024, 1.1919149516401024, 1.0449563037417802, 1.0449563037417802, 1.0449563037417802, 3.6670538659949856, 3.6670538659949856];
//+
MeshSize {1} = 3.667054;
//+
MeshSize {2} = 3.667054;
//+
MeshSize {3} = 1.191915;
//+
MeshSize {4} = 1.191915;
//+
MeshSize {5} = 1.191915;
//+
MeshSize {6} = 1.044956;
//+
MeshSize {7} = 1.044956;
//+
MeshSize {8} = 1.044956;
//+
Cylinder(2) = {24.919957, 3.048768, 0.000000, 0.000000, 0.000000, 1.000000, 1.276000, 2*Pi};
//+
c0 = 0.12759999115462448;
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
