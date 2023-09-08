//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.941586, -3.477076, 0.000000, 36.916460, 8.296836, 0.000000};
//+
l = [3.808465591799243, 0.8502091126444914, 0.9225939079374528, 3.808465591799243];
//+
MeshSize {1} = 3.808466;
//+
MeshSize {2} = 0.850209;
//+
MeshSize {3} = 0.922594;
//+
MeshSize {4} = 3.808466;
//+
Disk(2) = {28.560719, -0.219710, 0.000000, 1.349341, 1.349341};
//+
c0 = 0.13493409322600405;
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
