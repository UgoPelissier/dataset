//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.226242, -4.421732, 0.000000, 30.390151, 9.380588, 1.000000};
//+
l = [1.209178928080461, 1.209178928080461, 1.209178928080461, 1.209178928080461, 1.209178928080461, 1.209178928080461, 3.0973576159574545, 3.0973576159574545, 1.0705471248535041, 1.0705471248535041, 1.0705471248535041, 3.0973576159574545, 3.0973576159574545, 0.9969536541238029, 0.9969536541238029, 0.9969536541238029, 1.20466992023613, 1.20466992023613, 1.20466992023613, 1.20466992023613, 1.20466992023613, 1.20466992023613];
//+
MeshSize {1} = 1.209179;
//+
MeshSize {2} = 1.209179;
//+
MeshSize {3} = 1.209179;
//+
MeshSize {4} = 1.209179;
//+
MeshSize {5} = 1.209179;
//+
MeshSize {6} = 1.209179;
//+
MeshSize {7} = 3.097358;
//+
MeshSize {8} = 3.097358;
//+
Cylinder(2) = {12.817004, 0.333146, 0.000000, 0.000000, 0.000000, 1.000000, 1.366894, 2*Pi};
//+
c0 = 0.13668940137055624;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {20.743675, 1.128233, 0.000000, 0.000000, 0.000000, 1.000000, 0.620282, 2*Pi};
//+
c1 = 0.06202818747554333;
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
