//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.692358, -4.197698, 0.000000, 35.705899, 8.807717, 0.000000};
//+
l = [3.666370256464997, 0.5129234754610077, 0.4334665353356402, 0.4334665353356402, 0.2648202108888952, 0.2648202108888952, 3.666370256464997, 0.5036443943112652];
//+
MeshSize {1} = 3.666370;
//+
MeshSize {2} = 0.512923;
//+
MeshSize {3} = 0.433467;
//+
MeshSize {4} = 0.433467;
//+
Disk(2) = {34.589193, 1.120268, 0.000000, 1.282583, 1.282583};
//+
c0 = 0.12825830303221925;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.277080, 0.265984, 0.000000, 0.595684, 0.595684};
//+
c1 = 0.05956838549593161;
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
