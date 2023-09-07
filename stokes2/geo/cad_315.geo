//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.383043, -3.311247, 0.000000, 35.706578, 7.593664, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {33.232586, 3.014923, 0.000000, 0.520233, 0.520233};
//+
c0 = 0.052023288859327194;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.499149, -1.495535, 0.000000, 0.780347, 0.780347};
//+
c1 = 0.07803466531846416;
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
