//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.466473, -3.603543, 0.000000, 32.012716, 7.742029, 0.000000};
//+
l = [0.8243911293478062, 3.2709057774788715, 3.2709057774788715, 0.9162060097218108];
//+
MeshSize {1} = 0.824391;
//+
MeshSize {2} = 3.270906;
//+
MeshSize {3} = 3.270906;
//+
MeshSize {4} = 0.916206;
//+
Disk(2) = {9.425851, -0.896915, 0.000000, 1.115377, 1.115377};
//+
c0 = 0.11153774441639688;
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
