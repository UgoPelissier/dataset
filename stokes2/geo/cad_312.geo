//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.226242, -4.421732, 0.000000, 30.390151, 9.380588, 0.000000};
//+
l = [1.209178928080461, 1.209178928080461, 3.0973576159574545, 1.0705471248535041, 3.0973576159574545, 0.9969536541238029, 1.20466992023613, 1.20466992023613];
//+
MeshSize {1} = 1.209179;
//+
MeshSize {2} = 1.209179;
//+
MeshSize {3} = 3.097358;
//+
MeshSize {4} = 1.070547;
//+
Disk(2) = {12.817004, 0.333146, 0.000000, 1.366894, 1.366894};
//+
c0 = 0.13668940137055624;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.743675, 1.128233, 0.000000, 0.620282, 0.620282};
//+
c1 = 0.06202818747554333;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
