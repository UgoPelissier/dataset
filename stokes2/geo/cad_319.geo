//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.870481, -3.367512, 0.000000, 32.627118, 7.908784, 0.000000};
//+
l = [3.3730199467240447, 0.8360502041182489, 0.5211867269094661, 0.5211867269094661, 0.31823888715468773, 0.31823888715468773, 3.3730199467240447, 0.9578933903621932];
//+
MeshSize {1} = 3.373020;
//+
MeshSize {2} = 0.836050;
//+
MeshSize {3} = 0.521187;
//+
MeshSize {4} = 0.521187;
//+
Disk(2) = {29.963332, 1.968980, 0.000000, 1.188851, 1.188851};
//+
c0 = 0.11888505376159544;
//+
MeshSize {5} = c0;
//+
Disk(3) = {9.549140, -0.897128, 0.000000, 0.662907, 0.662907};
//+
c1 = 0.06629074055986205;
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
