//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.351759, -4.188313, 0.000000, 38.182721, 9.883576, 0.000000};
//+
l = [1.6085735688053004, 3.8850062788254256, 3.8850062788254256, 1.5079554855176618];
//+
MeshSize {1} = 1.608574;
//+
MeshSize {2} = 3.885006;
//+
MeshSize {3} = 3.885006;
//+
MeshSize {4} = 1.507955;
//+
Disk(2) = {16.146767, 2.446340, 0.000000, 1.046132, 1.046132};
//+
c0 = 0.10461323097338392;
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
