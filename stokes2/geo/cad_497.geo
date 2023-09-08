//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.731786, -3.169804, 0.000000, 30.595334, 8.239476, 0.000000};
//+
l = [0.8703294718802757, 0.8703294718802757, 3.15968462048715, 0.8591506007737781, 3.15968462048715, 0.6513292791585741, 0.8090767554697145, 0.8090767554697145];
//+
MeshSize {1} = 0.870329;
//+
MeshSize {2} = 0.870329;
//+
MeshSize {3} = 3.159685;
//+
MeshSize {4} = 0.859151;
//+
Disk(2) = {9.549653, 1.675122, 0.000000, 1.357922, 1.357922};
//+
c0 = 0.13579221112309456;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.179368, 3.083204, 0.000000, 0.905360, 0.905360};
//+
c1 = 0.0905360372252358;
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
