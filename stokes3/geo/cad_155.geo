//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.966268, -3.106107, 0.000000, 37.046324, 7.845996, 1.000000};
//+
l = [0.8146202860072244, 0.8146202860072244, 0.8146202860072244, 3.8214487874991203, 3.8214487874991203, 3.8214487874991203, 3.8214487874991203, 0.790345137979804, 0.790345137979804, 0.790345137979804];
//+
MeshSize {1} = 0.814620;
//+
MeshSize {2} = 0.814620;
//+
MeshSize {3} = 0.814620;
//+
MeshSize {4} = 3.821449;
//+
MeshSize {5} = 3.821449;
//+
MeshSize {6} = 3.821449;
//+
MeshSize {7} = 3.821449;
//+
MeshSize {8} = 0.790345;
//+
Cylinder(2) = {9.503270, 1.107690, 0.000000, 0.000000, 0.000000, 1.000000, 1.374117, 2*Pi};
//+
c0 = 0.1374116945052237;
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
