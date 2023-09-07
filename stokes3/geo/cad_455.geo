//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.053800, -4.068686, 0.000000, 31.736030, 8.990303, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {18.843620, 3.022310, 0.000000, 0.000000, 0.000000, 1.000000, 1.199365, 2*Pi};
//+
c0 = 0.1199365499957176;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {19.592560, -1.686215, 0.000000, 0.000000, 0.000000, 1.000000, 1.317442, 2*Pi};
//+
c1 = 0.13174419790368314;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
