//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.068421, -4.365621, 0.000000, 39.140870, 9.993565, 0.000000};
//+
l = [3.952640047052206, 0.9999665864853062, 1.11541619496857, 3.952640047052206];
//+
MeshSize {1} = 3.952640;
//+
MeshSize {2} = 0.999967;
//+
MeshSize {3} = 1.115416;
//+
MeshSize {4} = 3.952640;
//+
Disk(2) = {29.280180, -0.659860, 0.000000, 0.598443, 0.598443};
//+
c0 = 0.059844312638319797;
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
