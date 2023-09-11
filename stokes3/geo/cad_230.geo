//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.941586, -3.477076, 0.000000, 36.916460, 8.296836, 1.000000};
//+
l = [3.808465591799243, 3.808465591799243, 0.8502091126444914, 0.8502091126444914, 0.8502091126444914, 0.9225939079374528, 0.9225939079374528, 0.9225939079374528, 3.808465591799243, 3.808465591799243];
//+
MeshSize {1} = 3.808466;
//+
MeshSize {2} = 3.808466;
//+
MeshSize {3} = 0.850209;
//+
MeshSize {4} = 0.850209;
//+
MeshSize {5} = 0.850209;
//+
MeshSize {6} = 0.922594;
//+
MeshSize {7} = 0.922594;
//+
MeshSize {8} = 0.922594;
//+
Cylinder(2) = {28.560719, -0.219710, 0.000000, 0.000000, 0.000000, 1.000000, 1.349341, 2*Pi};
//+
c0 = 0.13493409322600405;
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
