//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.704988, -4.600085, 0.000000, 32.783043, 9.834251, 1.000000};
//+
l = [3.384710316743055, 3.384710316743055, 0.662864619050774, 0.662864619050774, 0.662864619050774, 0.9508512518242278, 0.9508512518242278, 0.9508512518242278, 3.384710316743055, 3.384710316743055];
//+
MeshSize {1} = 3.384710;
//+
MeshSize {2} = 3.384710;
//+
MeshSize {3} = 0.662865;
//+
MeshSize {4} = 0.662865;
//+
MeshSize {5} = 0.662865;
//+
MeshSize {6} = 0.950851;
//+
MeshSize {7} = 0.950851;
//+
MeshSize {8} = 0.950851;
//+
Cylinder(2) = {26.636560, -2.227875, 0.000000, 0.000000, 0.000000, 1.000000, 0.621874, 2*Pi};
//+
c0 = 0.06218741057327151;
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
