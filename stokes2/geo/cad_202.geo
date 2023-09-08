//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.704988, -4.600085, 0.000000, 32.783043, 9.834251, 0.000000};
//+
l = [3.384710316743055, 0.662864619050774, 0.9508512518242278, 3.384710316743055];
//+
MeshSize {1} = 3.384710;
//+
MeshSize {2} = 0.662865;
//+
MeshSize {3} = 0.950851;
//+
MeshSize {4} = 3.384710;
//+
Disk(2) = {26.636560, -2.227875, 0.000000, 0.621874, 0.621874};
//+
c0 = 0.06218741057327151;
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
