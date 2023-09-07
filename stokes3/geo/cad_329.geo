//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.167020, -3.289691, 0.000000, 32.815002, 8.227069, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {24.005369, 0.792842, 0.000000, 0.000000, 0.000000, 1.000000, 0.837835, 2*Pi};
//+
c0 = 0.0837835151207933;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {29.729460, -1.157953, 0.000000, 0.000000, 0.000000, 1.000000, 0.688426, 2*Pi};
//+
c1 = 0.06884260338908695;
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
