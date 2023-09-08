//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.966268, -3.106107, 0.000000, 37.046324, 7.845996, 0.000000};
//+
l = [0.8146202860072244, 3.8214487874991203, 3.8214487874991203, 0.790345137979804];
//+
MeshSize {1} = 0.814620;
//+
MeshSize {2} = 3.821449;
//+
MeshSize {3} = 3.821449;
//+
MeshSize {4} = 0.790345;
//+
Disk(2) = {9.503270, 1.107690, 0.000000, 1.374117, 1.374117};
//+
c0 = 0.1374116945052237;
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
