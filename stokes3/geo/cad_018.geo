//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.220217, -3.965184, 0.000000, 36.090812, 8.072354, 1.000000};
//+
l = [3.6534662927959674, 3.6534662927959674, 0.710819088200813, 0.710819088200813, 0.710819088200813, 0.3068396491279375, 0.3068396491279375, 0.3068396491279375, 3.6534662927959674, 3.6534662927959674];
//+
MeshSize {1} = 3.653466;
//+
MeshSize {2} = 3.653466;
//+
MeshSize {3} = 0.710819;
//+
MeshSize {4} = 0.710819;
//+
MeshSize {5} = 0.710819;
//+
MeshSize {6} = 0.306840;
//+
MeshSize {7} = 0.306840;
//+
MeshSize {8} = 0.306840;
//+
Cylinder(2) = {32.876733, 2.903104, 0.000000, 0.000000, 0.000000, 1.000000, 0.570857, 2*Pi};
//+
c0 = 0.05708573498886535;
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
