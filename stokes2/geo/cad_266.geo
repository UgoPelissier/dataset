//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.418239, -3.844325, 0.000000, 33.418861, 7.964384, 0.000000};
//+
l = [3.407062026694074, 0.39831175435671573, 1.231260073685277, 1.231260073685277, 1.1455161541367738, 1.1455161541367738, 3.407062026694074, 0.6124625249778154];
//+
MeshSize {1} = 3.407062;
//+
MeshSize {2} = 0.398312;
//+
MeshSize {3} = 1.231260;
//+
MeshSize {4} = 1.231260;
//+
Disk(2) = {21.503532, 1.540574, 0.000000, 1.145260, 1.145260};
//+
c0 = 0.11452600950799506;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.747228, -1.476756, 0.000000, 0.951001, 0.951001};
//+
c1 = 0.09510009707466512;
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
